#!/bin/bash

#SBATCH --partition=single
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=PAT_AL
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out

python3 experiment.py --DATASET 08 --SEED 00 --powerestimator AL --POWER 600  --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 01 --powerestimator AL --POWER 600  --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 02 --powerestimator AL --POWER 600  --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 03 --powerestimator AL --POWER 600  --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 04 --powerestimator AL --POWER 600  --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 05 --powerestimator AL --POWER 600  --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 06 --powerestimator AL --POWER 600  --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 07 --powerestimator AL --POWER 600  --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 08 --powerestimator AL --POWER 600  --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 09 --powerestimator AL --POWER 600  --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 00 --powerestimator AL --POWER 1200 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 01 --powerestimator AL --POWER 1200 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 02 --powerestimator AL --POWER 1200 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 03 --powerestimator AL --POWER 1200 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 04 --powerestimator AL --POWER 1200 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 05 --powerestimator AL --POWER 1200 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 06 --powerestimator AL --POWER 1200 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 07 --powerestimator AL --POWER 1200 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 08 --powerestimator AL --POWER 1200 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 09 --powerestimator AL --POWER 1200 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 00 --powerestimator AL --POWER 1800 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 01 --powerestimator AL --POWER 1800 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 02 --powerestimator AL --POWER 1800 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 03 --powerestimator AL --POWER 1800 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 04 --powerestimator AL --POWER 1800 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 05 --powerestimator AL --POWER 1800 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 06 --powerestimator AL --POWER 1800 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 07 --powerestimator AL --POWER 1800 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 08 --powerestimator AL --POWER 1800 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 09 --powerestimator AL --POWER 1800 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 00 --powerestimator AL --POWER 2400 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 01 --powerestimator AL --POWER 2400 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 02 --powerestimator AL --POWER 2400 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 03 --powerestimator AL --POWER 2400 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 04 --powerestimator AL --POWER 2400 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 05 --powerestimator AL --POWER 2400 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 06 --powerestimator AL --POWER 2400 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 07 --powerestimator AL --POWER 2400 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 08 --powerestimator AL --POWER 2400 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 08 --SEED 09 --powerestimator AL --POWER 2400 --mu 0.044 --projectname PowerAwareAugmentedLagrangian &

wait
