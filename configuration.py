import argparse


def str2bool(v):
    if isinstance(v, bool):
        return v
    if str(v).lower() in ('yes', 'true', 't', 'y', '1'):
        return True
    elif str(v).lower() in ('no', 'false', 'f', 'n', '0'):
        return False
    else:
        raise argparse.ArgumentTypeError('boolean value expected.')


parser = argparse.ArgumentParser(prog='PowerAware',
                                 description='Training for Power Efficient Printed Neural Networks')


parser.add_argument('--act',                  type=str,
                    default='tanh',                  help='type of activation function')

# printing-related hyperparameters for pNNs
parser.add_argument('--gmin',                  type=float,     default=0.01,
                    help='minimal printable conductance value')
parser.add_argument('--gmax',                  type=float,     default=10.,
                    help='maximal printable conductance value')
parser.add_argument('--T',                     type=float,
                    default=0.1,                   help='measuring threshold')
parser.add_argument('--m',                     type=float,
                    default=0.3,                   help='measuring margin')
# learnable tanh circuits
parser.add_argument('--ACT_R1n',               type=float,
                    default=12.7865,               help='resistance in nonlinear circuit')
parser.add_argument('--ACT_R2n',               type=float,     default=-
                    3.1871,               help='resistance in nonlinear circuit')
parser.add_argument('--ACT_W1n',               type=float,
                    default=-10.4537,              help='width of the transistor 1')
parser.add_argument('--ACT_L1n',               type=float,
                    default=10.5460,               help='length of the transistor 1')
parser.add_argument('--ACT_W2n',               type=float,
                    default=-5.8496,               help='width of the transistor 2')
parser.add_argument('--ACT_L2n',               type=float,
                    default=4.2337,                help='length of the transistor 2')
# learnable sigmoid circuits
parser.add_argument('--S_R1n',                 type=float,     default=-
                    11.7481,              help='resistance in nonlinear circuit')
parser.add_argument('--S_R2n',                 type=float,     default=-
                    0.3905,               help='resistance in nonlinear circuit')
parser.add_argument('--S_W1n',                 type=float,
                    default=-9.1690,               help='width of the transistor')
parser.add_argument('--S_L1n',                 type=float,
                    default=0.3913,                help='length of the transistor')
parser.add_argument('--S_W2n',                 type=float,
                    default=7.2004,                help='width of the transistor')
parser.add_argument('--S_L2n',                 type=float,
                    default=15.5558,               help='length of the transistor')
# learnable pReLU circuits
parser.add_argument('--ReLU_RHn',              type=float,     default=-
                    1.9557,               help='resistance in nonlinear circuit')
parser.add_argument('--ReLU_RLn',              type=float,     default=-
                    20.1581,              help='resistance in nonlinear circuit')
parser.add_argument('--ReLU_RDn',              type=float,
                    default=16.6486,               help='resistance in nonlinear circuit')
parser.add_argument('--ReLU_RBn',              type=float,     default=-
                    14.3472,              help='resistance in nonlinear circuit')
parser.add_argument('--ReLU_Wn',               type=float,
                    default=16.6550,               help='width of the transistor')
parser.add_argument('--ReLU_Ln',               type=float,
                    default=-21.7591,              help='length of the transistor')
# learnable hard sigmoid circuits
parser.add_argument('--HS_Rn',                 type=float,     default=-
                    0.3766,               help='resistance in nonlinear circuit')
parser.add_argument('--HS_Wn',                 type=float,
                    default=0.5192,                help='width of the transistor')
parser.add_argument('--HS_Ln',                 type=float,
                    default=4.6293,                help='length of the transistor')
# learnable negative weight circuits
parser.add_argument('--NEG_R1n',               type=float,     default=-
                    7.0846,               help='resistance in nonlinear circuit')
parser.add_argument('--NEG_R2n',               type=float,     default=-
                    2.5695,               help='resistance in nonlinear circuit')
parser.add_argument('--NEG_R3n',               type=float,
                    default=16.1542,               help='resistance in nonlinear circuit')
parser.add_argument('--NEG_W1n',               type=float,
                    default=13.8696,               help='width of the transistor')
parser.add_argument('--NEG_L1n',               type=float,
                    default=2.7635,                help='length of the transistor')
parser.add_argument('--NEG_W2n',               type=float,
                    default=1.2674,                help='width of the transistor')
parser.add_argument('--NEG_L2n',               type=float,
                    default=-10.4803,              help='length of the transistor')
parser.add_argument('--NEG_W3n',               type=float,
                    default=-6.4386,               help='width of the transistor')
parser.add_argument('--NEG_L3n',               type=float,
                    default=5.1005,                help='length of the transistor')

# machine-learning-related hyperparameters
# dataset-related
parser.add_argument('--task',                  type=str,       default='normal',
                    help='train normal pNN or split manufacturing')
parser.add_argument('--DATASET',               type=int,
                    default=0,                     help='index of training dataset')
parser.add_argument('--DataPath',              type=str,
                    default='./dataset',           help='path to dataset')
# data augmentation
parser.add_argument('--InputNoise',            type=float,
                    default=0.,                    help='noise of input signal')
parser.add_argument('--IN_test',               type=float,
                    default=0.,                    help='noise of input signal for test')
parser.add_argument('--R_train',               type=int,       default=1,
                    help='number of sampling for input noise in training')
parser.add_argument('--R_test',                type=int,       default=1,
                    help='number of sampling for input noise in testing')
# regularization
parser.add_argument('--pathnorm',              type=str2bool,  default=False,
                    help='path-norm as regularization for improving robustness against input noise')
# network-related
parser.add_argument('--hidden',                type=list,
                    default=[3],                   help='topology of the hidden layers')
# training-related
parser.add_argument('--SEED',                  type=int,
                    default=0,                     help='random seed')
parser.add_argument('--DEVICE',                type=str,
                    default='cpu',                 help='device for training')
parser.add_argument('--EPOCH',                 type=int,
                    default=10**10,                help='maximal epochs')
parser.add_argument('--LR',                    type=float,
                    default=0.1,                   help='learning rate')
parser.add_argument('--AL_PATIENCE',           type=int,       default=100,
                    help='patience for updating the lagrangian factor')
parser.add_argument('--PATIENCE',              type=int,       default=100,
                    help='patience for updating learning rate')
parser.add_argument('--LR_DECAY',              type=float,     default=0.5,
                    help='decay of learning rate for progressive lr')
parser.add_argument('--LR_MIN',                type=float,     default=1e-4,
                    help='minimal learning rate for stop training')
# regarding augmented lagrangian for (in)equality constratins
parser.add_argument('--lambda_',               type=float,
                    default=0.,                    help='')
parser.add_argument('--mu',                    type=float,
                    default=0.,                   help='')

# metrics
parser.add_argument('--metric',                type=str,       default='acc',
                    help='nominal accuracy or measuring-aware accuracy')
# server-related
parser.add_argument('--TIMELIMITATION',        type=float,
                    default=70,                    help='maximal running time (in hour)')

# hardware-related hyperparameters
# aging-related hyperparameters
parser.add_argument('--MODE',                  type=str,
                    default='nominal',             help='training mode: aging, nominal')
parser.add_argument('--M_train',               type=int,       default=1,
                    help='number of stochastic aging models during training')
parser.add_argument('--K_train',               type=int,       default=1,
                    help='number of temporal sampling during training')
parser.add_argument('--M_test',                type=int,       default=1,
                    help='number of stochastic aging models for testing')
parser.add_argument('--K_test',                type=int,       default=1,
                    help='number of temporal sampling for testing')
parser.add_argument('--t_test_max',            type=int,
                    default=1,                     help='test time interval')
parser.add_argument('--integration',           type=str,       default='MC',
                    help='method for integration: Monte-Carlo, Gaussian Quadrature')
# variation-related hyperparameters
parser.add_argument('--N_train',               type=int,       default=1,
                    help='number of sampling for variation during training')
parser.add_argument('--e_train',               type=float,
                    default=0.,                    help='variation during training')
parser.add_argument('--N_test',                type=int,       default=1,
                    help='number of sampling for variation for testing')
parser.add_argument('--e_test',                type=int,
                    default=0.,                    help='variation for testing')
# power
parser.add_argument('--powerestimator',        type=str,       default='power',
                    help='the penalty term for encouraging lower energy')
parser.add_argument('--powerbalance',          type=float,
                    default=0.8,                   help='the scaling term for energy')
parser.add_argument('--estimatorbalance',      type=float,
                    default=0.1,                   help='the scaling term for energy')
parser.add_argument('--pgmin',                 type=float,
                    default=1e-7,                help='minimal printable conductance gmin')
parser.add_argument('--lnc',                   type=str2bool,  default=True,
                    help='shared learnable nonlinear components')
parser.add_argument('--POWER',                 type=float,     default=500.,
                    help='predefined power consumption for equality constraint')


# log-file-related information
parser.add_argument('--projectname',           type=str,
                    default='project',             help='name of the project')
parser.add_argument('--temppath',              type=str,
                    default='/temp',               help='path to temp files')
parser.add_argument('--logfilepath',           type=str,
                    default='/log',                help='path to log files')
parser.add_argument('--report_freq',           type=int,
                    default=50,                    help='write log in every N epochs')
parser.add_argument('--recording',             type=str2bool,
                    default=False,                 help='save information in each epoch')
parser.add_argument('--recordpath',            type=str,
                    default='/record',             help='save information in each epoch')
parser.add_argument('--savepath',              type=str,
                    default='/experiment',         help='save information in each epoch')
parser.add_argument('--loglevel',              type=str,
                    default='info',                help='level of message logger')
