#!/bin/bash

#SBATCH --partition=single
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=PAT_AL
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out

python3 experiment.py --DATASET 07 --SEED 00 --powerestimator AL --POWER 300  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 01 --powerestimator AL --POWER 300  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 02 --powerestimator AL --POWER 300  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 03 --powerestimator AL --POWER 300  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 04 --powerestimator AL --POWER 300  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 05 --powerestimator AL --POWER 300  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 06 --powerestimator AL --POWER 300  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 07 --powerestimator AL --POWER 300  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 08 --powerestimator AL --POWER 300  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 09 --powerestimator AL --POWER 300  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 00 --powerestimator AL --POWER 600  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 01 --powerestimator AL --POWER 600  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 02 --powerestimator AL --POWER 600  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 03 --powerestimator AL --POWER 600  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 04 --powerestimator AL --POWER 600  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 05 --powerestimator AL --POWER 600  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 06 --powerestimator AL --POWER 600  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 07 --powerestimator AL --POWER 600  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 08 --powerestimator AL --POWER 600  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 09 --powerestimator AL --POWER 600  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 00 --powerestimator AL --POWER 900  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 01 --powerestimator AL --POWER 900  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 02 --powerestimator AL --POWER 900  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 03 --powerestimator AL --POWER 900  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 04 --powerestimator AL --POWER 900  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 05 --powerestimator AL --POWER 900  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 06 --powerestimator AL --POWER 900  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 07 --powerestimator AL --POWER 900  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 08 --powerestimator AL --POWER 900  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 09 --powerestimator AL --POWER 900  --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 00 --powerestimator AL --POWER 1200 --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 01 --powerestimator AL --POWER 1200 --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 02 --powerestimator AL --POWER 1200 --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 03 --powerestimator AL --POWER 1200 --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 04 --powerestimator AL --POWER 1200 --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 05 --powerestimator AL --POWER 1200 --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 06 --powerestimator AL --POWER 1200 --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 07 --powerestimator AL --POWER 1200 --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 08 --powerestimator AL --POWER 1200 --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &
python3 experiment.py --DATASET 07 --SEED 09 --powerestimator AL --POWER 1200 --mu 0.051000000000000004 --act hs --projectname PowerAwareAugmentedLagrangianHS &

wait
