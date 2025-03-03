#!/bin/bash

#SBATCH --partition=normal
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=PAT_AL
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out

python3 experiment.py --DATASET 02 --SEED 00 --powerestimator AL --POWER 400  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 01 --powerestimator AL --POWER 400  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 02 --powerestimator AL --POWER 400  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 03 --powerestimator AL --POWER 400  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 04 --powerestimator AL --POWER 400  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 05 --powerestimator AL --POWER 400  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 06 --powerestimator AL --POWER 400  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 07 --powerestimator AL --POWER 400  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 08 --powerestimator AL --POWER 400  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 09 --powerestimator AL --POWER 400  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 00 --powerestimator AL --POWER 800  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 01 --powerestimator AL --POWER 800  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 02 --powerestimator AL --POWER 800  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 03 --powerestimator AL --POWER 800  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 04 --powerestimator AL --POWER 800  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 05 --powerestimator AL --POWER 800  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 06 --powerestimator AL --POWER 800  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 07 --powerestimator AL --POWER 800  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 08 --powerestimator AL --POWER 800  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 09 --powerestimator AL --POWER 800  --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 00 --powerestimator AL --POWER 1200 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 01 --powerestimator AL --POWER 1200 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 02 --powerestimator AL --POWER 1200 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 03 --powerestimator AL --POWER 1200 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 04 --powerestimator AL --POWER 1200 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 05 --powerestimator AL --POWER 1200 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 06 --powerestimator AL --POWER 1200 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 07 --powerestimator AL --POWER 1200 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 08 --powerestimator AL --POWER 1200 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 09 --powerestimator AL --POWER 1200 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 00 --powerestimator AL --POWER 1600 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 01 --powerestimator AL --POWER 1600 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 02 --powerestimator AL --POWER 1600 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 03 --powerestimator AL --POWER 1600 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 04 --powerestimator AL --POWER 1600 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 05 --powerestimator AL --POWER 1600 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 06 --powerestimator AL --POWER 1600 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 07 --powerestimator AL --POWER 1600 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 08 --powerestimator AL --POWER 1600 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 02 --SEED 09 --powerestimator AL --POWER 1600 --mu 0.0175 --act hs --projectname PowerAwareAugmentedLagrangianHS &

wait
