#!/bin/bash

#SBATCH --partition=single
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=PAT_AL
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out

python3 experiment.py --DATASET 10 --SEED 00 --powerestimator AL --POWER 340  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 01 --powerestimator AL --POWER 340  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 02 --powerestimator AL --POWER 340  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 03 --powerestimator AL --POWER 340  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 04 --powerestimator AL --POWER 340  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 05 --powerestimator AL --POWER 340  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 06 --powerestimator AL --POWER 340  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 07 --powerestimator AL --POWER 340  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 08 --powerestimator AL --POWER 340  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 09 --powerestimator AL --POWER 340  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 00 --powerestimator AL --POWER 680  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 01 --powerestimator AL --POWER 680  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 02 --powerestimator AL --POWER 680  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 03 --powerestimator AL --POWER 680  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 04 --powerestimator AL --POWER 680  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 05 --powerestimator AL --POWER 680  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 06 --powerestimator AL --POWER 680  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 07 --powerestimator AL --POWER 680  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 08 --powerestimator AL --POWER 680  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 09 --powerestimator AL --POWER 680  --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 00 --powerestimator AL --POWER 1020 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 01 --powerestimator AL --POWER 1020 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 02 --powerestimator AL --POWER 1020 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 03 --powerestimator AL --POWER 1020 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 04 --powerestimator AL --POWER 1020 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 05 --powerestimator AL --POWER 1020 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 06 --powerestimator AL --POWER 1020 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 07 --powerestimator AL --POWER 1020 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 08 --powerestimator AL --POWER 1020 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 09 --powerestimator AL --POWER 1020 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 00 --powerestimator AL --POWER 1360 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 01 --powerestimator AL --POWER 1360 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 02 --powerestimator AL --POWER 1360 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 03 --powerestimator AL --POWER 1360 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 04 --powerestimator AL --POWER 1360 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 05 --powerestimator AL --POWER 1360 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 06 --powerestimator AL --POWER 1360 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 07 --powerestimator AL --POWER 1360 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 08 --powerestimator AL --POWER 1360 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 10 --SEED 09 --powerestimator AL --POWER 1360 --mu 0.001 --act hs --projectname PowerAwareAugmentedLagrangianHS &

wait
