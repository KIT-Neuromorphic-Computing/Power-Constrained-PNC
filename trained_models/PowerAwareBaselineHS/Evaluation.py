import os
import sys
from pathlib import Path
sys.path.append(os.getcwd())
sys.path.append(str(Path(os.getcwd()).parent))
sys.path.append(os.path.join(os.getcwd(), 'utils'))
# ----------------------------------------------
from configuration import *
import torch
import pprint
import pNN_Power_Aware as pNN
from utils import *
from tqdm.notebook import tqdm



args = parser.parse_args([])
args = FormulateArgs(args)
args.act = 'hs'

num_seeds = 10
num_dataset = 13


results = torch.zeros([num_dataset, num_seeds, 51, 8])
gammas = torch.linspace(0, 1, 51)

evaluator = Evaluator(args).to(args.DEVICE)

for ds in tqdm(range(num_dataset), desc="Datasets"):
    args.DATASET = ds
    valid_loader, datainfo = GetDataLoader(args, 'valid', path='../dataset/')
    test_loader, datainfo = GetDataLoader(args, 'test', path='../dataset/')
    print(datainfo)

    for seed in tqdm(range(num_seeds), desc="Seeds", leave=False):

        args.SEED = seed

        for g, gamma in enumerate(tqdm(gammas, desc="Gammas", leave=False)):
            # rounded_num = np.round(gamma, 3)

            # # Convert to string and remove trailing zeros
            # formatted_num = ('{:.3f}'.format(rounded_num)).rstrip('0')
            # if formatted_num[-1] == '.':
            #     formatted_num += '0'

            # # Special case for 0 and 1 to ensure they have one decimal place
            # if rounded_num == 0 or rounded_num == 1:
            #     formatted_num = '{:.1f}'.format(rounded_num)
            # args.powerbalance = formatted_num
            args.powerbalance = int(np.round(gamma, 3)*1e2)
            if args.powerbalance == 58:
                args.powerbalance = 57

            for x, y in valid_loader:
                X_valid, y_valid = x.to(args.DEVICE), y.to(args.DEVICE)
            for x, y in test_loader:
                X_test, y_test = x.to(args.DEVICE), y.to(args.DEVICE)

            setup = f"data_{datainfo['dataname']}_seed_{args.SEED}_Penalty_{
                args.powerestimator}_Factor_{args.powerbalance}"

            model_PT_name = f'./models/pNN_{setup}.model'
            model_FT_name = f'./models/pNN_{setup}_FT.model'

            try:
                model_PT = torch.load(model_PT_name)
            except Exception as e:
                print(f"Error loading model_PT: {model_PT_name}")
                print(e)
                continue

            try:
                model_FT = torch.load(model_FT_name)
            except Exception as e:
                print(f"Error loading model_FT: {model_FT_name}")
                print(e)
                continue

            acc_valid_pt, power_valid_pt = evaluator(
                model_PT, X_valid, y_valid)
            acc_test_pt, power_test_pt = evaluator(model_PT, X_test, y_test)

            acc_valid_ft, power_valid_ft = evaluator(
                model_FT, X_valid, y_valid)
            acc_test_ft, power_test_ft = evaluator(model_FT, X_test, y_test)

            results[ds, seed, g, 0] = acc_valid_pt
            results[ds, seed, g, 1] = power_valid_pt.cpu().item() * 1000000
            results[ds, seed, g, 2] = acc_test_pt
            results[ds, seed, g, 3] = power_test_pt.cpu().item() * 1000000

            results[ds, seed, g, 4] = acc_valid_ft
            results[ds, seed, g, 5] = power_valid_ft.cpu().item() * 1000000
            results[ds, seed, g, 6] = acc_test_ft
            results[ds, seed, g, 7] = power_test_ft.cpu().item() * 1000000

torch.save(results, './result.matrix')
torch.save(results, '../RESULT/result_baeline_HS.matrix')
