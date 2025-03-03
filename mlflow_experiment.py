import pNN_Power_Aware as pNN
from utils import *
import pprint
import torch
from configuration import *
import os
import sys
import time
import math

from functools import partial
import os
import tempfile
from pathlib import Path
import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
from torch.utils.data import random_split
import torchvision
import torchvision.transforms as transforms
import ray
from ray import tune
from ray import train
from ray.train import Checkpoint, get_checkpoint
from ray.tune.schedulers import ASHAScheduler
import ray.cloudpickle as pickle

sys.path.append(os.getcwd())
sys.path.append(os.path.join(os.getcwd(), 'utils'))

args = parser.parse_args()
# args.DATASET = 0
# args.SEED = 0
# args.powerestimator = "AL"
# args.POWER = 200
# args.projectname = 'MLflowPowerAwarePNN2'
# args.DEVICE = 'cpu'
# args.EPOCH = 100
args.PATIENCE = 10

args = FormulateArgs(args)

print(f'Training network on device: {args.DEVICE}.')
MakeFolder(args)

# Store the original working directory
original_path = os.getcwd()


def train_pnn(nn, train_loader, valid_loader, lossfunction, optimizer, args, logger, current_epoch, UUID='default'):
    # tmpdir = os.getenv('TMPDIR', default='.')
    # args.temppath = tmpdir

    start_training_time = time.time()

    evaluator = Evaluator(args)

    best_valid_loss = math.inf
    patience = 0

    early_stop = False

    resulted_nn = nn

    # if load_checkpoint(UUID, args.temppath):
    #     current_epoch, nn, optimizer, best_valid_loss, lossfunction = load_checkpoint(
    #         UUID, args.temppath)

    #     logger.info(f'Restart previous training from {current_epoch} epoch')
    #     print(f'Restart previous training from {current_epoch} epoch')

    epoch = current_epoch
    for epoch in range(current_epoch, 10**10):
        start_epoch_time = time.time()

        msg = ''

        for x_train, y_train in train_loader:
            msg += f'hyperparameters in printed neural network for training :\nepoch : {
                epoch:-6d} |\n'

            L_train = lossfunction(nn, x_train, y_train)
            train_acc, train_power = evaluator(nn, x_train, y_train)
            optimizer.zero_grad()
            L_train.backward()
            optimizer.step()

        with torch.no_grad():
            for x_valid, y_valid in valid_loader:
                msg += f'hyperparameters in printed neural network for validation :\nepoch : {
                    epoch:-6d} |\n'

                L_valid = lossfunction(nn, x_valid, y_valid)
                valid_acc, valid_power = evaluator(nn, x_valid, y_valid)

        logger.debug(msg)

        # if args.recording:
        #     record_checkpoint(epoch, nn, L_train, L_valid,
        #                       UUID, args.recordpath)

        ray.train.report({"loss": L_valid.item(), "accuracy": valid_acc})

        if L_valid.item() < best_valid_loss:
            best_valid_loss = L_valid.item()
            # save_checkpoint(epoch, nn, optimizer, best_valid_loss,
            #                 lossfunction, UUID, args.temppath)
            resulted_nn = nn
            patience = 0
        else:
            patience += 1

        if patience > args.PATIENCE:
            print('Early stop.')
            logger.info('Early stop.')
            early_stop = True
            break

        end_epoch_time = time.time()
        end_training_time = time.time()
        if (end_training_time - start_training_time) >= args.TIMELIMITATION*60*60:
            print('Time limination reached.')
            logger.warning('Time limination reached.')
            break

        for g in optimizer.param_groups:
            current_lr = g['lr']

        if not epoch % args.report_freq:
            print(f'| Epoch: {epoch:-6d} | Train loss: {L_train.item():.4f} | Valid loss: {L_valid.item():.4f} | Train acc: {train_acc:.4f} | Valid acc: {valid_acc:.4f} |'
                  f' patience: {patience:-3d} | lr: {current_lr:.3e} | Epoch time: {
                      end_epoch_time-start_epoch_time:.1f} |'
                  f' Power: {train_power.item():.2e} | lambda: {lossfunction.args.lambda_:.3e} | mu: {lossfunction.args.mu:.3e} |')
            logger.info(f'| Epoch: {epoch:-6d} | Train loss: {L_train.item():.4f} | Valid loss: {L_valid.item():.4f} | Train acc: {train_acc:.4f} | Valid acc: {valid_acc:.4f} |'
                        f' patience: {patience:-3d} | lr: {current_lr:.3e} | Epoch time: {
                            end_epoch_time-start_epoch_time:.1f} |'
                        f' Power: {train_power.item():.2e} | lambda: {lossfunction.args.lambda_:.3e} | mu: {lossfunction.args.mu:.3e} |')

        # if not epoch % 100:
        #     early_stop = True
        #     epoch += 1
        #     break

    # _, resulted_nn, _, _, _ = load_checkpoint(UUID, args.temppath)

    # if early_stop:
    #     os.remove(f'{args.temppath}/{UUID}.ckp')

    return resulted_nn, early_stop, optimizer, epoch


def train_pnn_progressive(nn, train_loader, valid_loader, lossfunction, optimizer, args, logger, current_epoch=0, UUID='default'):
    # tmpdir = os.getenv('TMPDIR', default='.')
    # args.temppath = tmpdir

    start_training_time = time.time()
    UUID += '_progressive'

    current_lr = math.inf

    while current_lr > args.LR_MIN:
        early_stop = False

        nn, early_stop, optimizer, current_epoch = train_pnn(
            nn, train_loader, valid_loader, lossfunction, optimizer, args, logger=logger, current_epoch=current_epoch, UUID=UUID)

        print(f'current_lr: {current_lr}')
        if not early_stop:
            nn, early_stop, optimizer, current_epoch = train_pnn(
                nn, train_loader, valid_loader, lossfunction, optimizer, args, current_epoch=current_epoch, logger=logger, UUID=UUID)
        else:
            logger.info(f'load best network to warm start training with lower lr, current epoch {
                        current_epoch}.')
            print(f'load best network to warm start training with lower lr, current epoch {
                  current_epoch}.')
            for g in optimizer.param_groups:
                g['params'] = [p for p in nn.parameters()]
                g['lr'] = g['lr'] * args.LR_DECAY
                current_lr = g['lr']
            logger.info(f'lr update to {current_lr}.')

            # save_checkpoint(current_epoch, nn, optimizer,
            #                 math.inf, lossfunction, UUID, args.temppath)

        end_training_time = time.time()
        if (end_training_time - start_training_time) >= args.TIMELIMITATION*60*60:
            print('Time limination reached.')
            logger.warning('Time limination reached.')
            return nn, early_stop

    # os.remove(f'{args.temppath}/{UUID}.ckp')

    return nn, early_stop, lossfunction, current_epoch


def al_train_pnn_progressive(nn, train_loader, valid_loader, lossfunction, optimizer, args, logger, UUID='default'):
    start_training_time = time.time()
    UUID += '_AL'

    C = math.inf
    N_update = 0
    current_epoch = 0

    while C > 0.:
        nn, early_stop, lossfunction, current_epoch = train_pnn_progressive(
            nn, train_loader, valid_loader, lossfunction, optimizer, args, logger=logger, current_epoch=current_epoch, UUID=UUID)

        if not early_stop:
            nn, early_stop, lossfunction, current_epoch = train_pnn_progressive(
                nn, train_loader, valid_loader, lossfunction, optimizer, args, logger=logger, current_epoch=current_epoch, UUID=UUID)
        else:
            N_update += 1
            logger.info(f'Training converged, update lambda.')
            print(f'Training converged, update lambda.')

            # update lambda
            for x, y in train_loader:
                lossfunction(nn, x, y)
            C = lossfunction.constraint(nn)

            if C > 0.:
                temp = (lossfunction.args.lambda_ + lossfunction.args.mu *
                        lossfunction.constraint(nn)).data.clone()
                if temp <= 0.:
                    lossfunction.args.lambda_ = 0.
                else:
                    lossfunction.args.lambda_ = temp.item()

                lossfunction.args.mu += 100.

                # reset learning inital learning rate
                for g in optimizer.param_groups:
                    g['params'] = [p for p in nn.parameters()]
                    g['lr'] = 5 * args.LR / (N_update + 5)
                    current_lr = g['lr']
                logger.info(f'lr reset to {current_lr}.')
                print(f'lr reset to {current_lr}.')

    return nn, early_stop, lossfunction


def PT(pnn, train_loader, valid_loader, args, msglogger, setup):
    best_nn = pnn
    # Pretraning
    lossfunction = pNN.Lossfunction(args).to(args.DEVICE)
    optimizer = torch.optim.Adam(pnn.GetParam(), lr=args.LR)

    if args.powerestimator == 'AL':
        pnn, best, lossfunction = al_train_pnn_progressive(
            pnn, train_loader, valid_loader, lossfunction, optimizer, args, logger=msglogger, UUID=setup+'_PT')
    else:
        pnn, best, lossfunction, current_epoch = train_pnn_progressive(
            pnn, train_loader, valid_loader, lossfunction, optimizer, args, logger=msglogger, UUID=setup+'_PT')

    if best:
        # if not os.path.exists(f'{args.savepath}/'):
        #     os.makedirs(f'{args.savepath}/')
        # torch.save(pnn, f'{args.savepath}/pNN_{setup}.model')
        best_nn = pnn
        msglogger.info('Pretraining is finished.')
        print('Pretraining is finished.')
    else:
        msglogger.warning('Time out, further training is necessary.')
        print('Time out, further training is necessary.')
    return best_nn


def FT(pnn, train_loader, valid_loader, args, msglogger, setup):

    # pnn = torch.load(f'{args.savepath}/pNN_{setup}.model').to(args.DEVICE)
    lossfunction = pNN.Lossfunction(args).to(args.DEVICE)
    lossfunction.args.mu = 0.
    lossfunction.args.lambda_ = 0.

    # Pruning
    msglogger.info('Pruning...')
    print('Pruning...')
    N1, N2, N3, P1, P2, P3 = pnn.pruning
    information = f'{N2} ({P2*100:.2f}%) activations and {N3} ({P3 *
                                                                100:.2f}%) negation circuits are pruned.'
    msglogger.info(information)
    print(information)

    msglogger.info('Fine tuning...')
    optimizer = torch.optim.Adam(pnn.GetParam(), lr=args.LR)
    if args.powerestimator == 'AL':
        pnn, best, lossfunction = al_train_pnn_progressive(
            pnn, train_loader, valid_loader, lossfunction, optimizer, args, msglogger, UUID=setup+'_FT')
    else:
        pnn, best, lossfunction, current_epoch = train_pnn_progressive(
            pnn, train_loader, valid_loader, lossfunction, optimizer, args, msglogger, UUID=setup+'_FT')
    if best:
        # if not os.path.exists(f'{args.savepath}/'):
        #     os.makedirs(f'{args.savepath}/')
        # torch.save(pnn, f'{args.savepath}/pNN_{setup}_FT.model')
        # # os.remove(f'{args.savepath}/pNN_{setup}.lf')
        best_nn = pnn
        msglogger.info('Fine tuning is finished.')
    else:
        best_nn = None
        msglogger.warning('Time out, further training is necessary.')
    return best_nn


def train_model(config, args, train_loader, valid_loader, test_loader, datainfo):
    args.mu = config["mu"]

    print('--------------------------------------------------')
    print(f"Current working directory: {os.getcwd()}")

    try:
        # Reset to the original path before loading files
        os.chdir(original_path)

        print('--------------------------------------------------')
        print(f"Current working directory after: {os.getcwd()}")

        pprint.pprint(datainfo)

        # SetSeed(args.SEED)

        setup = f"data_{datainfo['dataname']}_seed_{args.SEED}_Penalty_{
            args.powerestimator}_Factor_{int(args.powerbalance):04d}"
        print(f'Training setup: {setup}.')

        msglogger = GetMessageLogger(args, setup)
        msglogger.info(f'Training network on device: {args.DEVICE}.')
        msglogger.info(f'Training setup: {setup}.')
        msglogger.info(datainfo)

        if os.path.isfile(f'{args.savepath}/pNN_{setup}_FT.model'):
            print(f'{setup}_FT exists, skip this training.')
            msglogger.info('Training was already finished.')
        elif os.path.isfile(f'{args.savepath}/pNN_{setup}.model'):
            print(f'{setup} is pretrained, now fine tuning.')
            FT(train_loader, valid_loader, args, msglogger, setup)
        else:
            topology = [datainfo['N_feature']] + \
                args.hidden + [datainfo['N_class']]
            msglogger.info(f'Topology of the network: {topology}.')

            pnn = pNN.pNN(topology, args).to(args.DEVICE)

            pnn = PT(pnn, train_loader, valid_loader, args, msglogger, setup)
            pnn = FT(pnn, train_loader, valid_loader, args, msglogger, setup)
    except Exception as e:
        print(f"Error during training: {e}")
        raise e


def main(num_samples=10, max_num_epochs=100):

    train_loader, datainfo = GetDataLoader(args, 'train')
    valid_loader, datainfo = GetDataLoader(args, 'valid')
    test_loader, datainfo = GetDataLoader(args, 'test')

    ray.init(num_cpus=20, num_gpus=0)

    # Define the search space for the augmentation hyperparameters
    config = {
        "mu": tune.qloguniform(1e-3, 1e-1, 5e-4),  # Range for noise level
    }

    # Define the scheduler for Ray Tune
    scheduler = ASHAScheduler(
        metric="loss",
        mode="min",
        max_t=max_num_epochs,
        grace_period=1,
        reduction_factor=2,
    )

    # Run hyperparameter tuning
    result = tune.run(
        partial(train_model, args=args, train_loader=train_loader,
                valid_loader=valid_loader, test_loader=test_loader, datainfo=datainfo),
        config=config,
        num_samples=num_samples,
        scheduler=scheduler,)

    best_trial = result.get_best_trial("loss", "min", "last")
    print(f"Best trial config for {args.DATASET}: {
        best_trial.config}")
    # Open a file in write mode
    with open(f"v4_output_{args.DATASET}.txt", "w") as f:
        # Redirect print output to the file

        print(f"Best trial config for {args.DATASET}: {
              best_trial.config}", file=f)
        print(f"Best trial final validation loss: {
            best_trial.last_result['loss']}", file=f)
        print(f"Best trial final validation accuracy: {
            best_trial.last_result['accuracy']}", file=f)


if __name__ == "__main__":

    # train_loader, datainfo = GetDataLoader(args, 'train')
    # valid_loader, datainfo = GetDataLoader(args, 'valid')
    # test_loader, datainfo = GetDataLoader(args, 'test')

    # config = {"mu": 0.001}

    # train_model(config=config, args=args, train_loader=train_loader,
    #             valid_loader=valid_loader, test_loader=test_loader, datainfo=datainfo)

    main(num_samples=10, max_num_epochs=10000)
