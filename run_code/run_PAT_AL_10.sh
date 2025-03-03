#!/bin/bash

#SBATCH --partition=single
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=PAT_AL
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out
#SBATCH --mail-user=hzhao@teco.edu

python3 experiment.py --DATASET 09 --SEED 00 --powerestimator AL --POWER 280  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 01 --powerestimator AL --POWER 280  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 02 --powerestimator AL --POWER 280  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 03 --powerestimator AL --POWER 280  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 04 --powerestimator AL --POWER 280  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 05 --powerestimator AL --POWER 280  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 06 --powerestimator AL --POWER 280  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 07 --powerestimator AL --POWER 280  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 08 --powerestimator AL --POWER 280  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 09 --powerestimator AL --POWER 280  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 00 --powerestimator AL --POWER 560  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 01 --powerestimator AL --POWER 560  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 02 --powerestimator AL --POWER 560  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 03 --powerestimator AL --POWER 560  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 04 --powerestimator AL --POWER 560  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 05 --powerestimator AL --POWER 560  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 06 --powerestimator AL --POWER 560  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 07 --powerestimator AL --POWER 560  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 08 --powerestimator AL --POWER 560  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 09 --powerestimator AL --POWER 560  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 00 --powerestimator AL --POWER 840  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 01 --powerestimator AL --POWER 840  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 02 --powerestimator AL --POWER 840  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 03 --powerestimator AL --POWER 840  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 04 --powerestimator AL --POWER 840  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 05 --powerestimator AL --POWER 840  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 06 --powerestimator AL --POWER 840  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 07 --powerestimator AL --POWER 840  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 08 --powerestimator AL --POWER 840  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 09 --powerestimator AL --POWER 840  --mu 0.035500000000000004 --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 00 --powerestimator AL --POWER 1120 --mu 0.035500000000000004  --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 01 --powerestimator AL --POWER 1120 --mu 0.035500000000000004  --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 02 --powerestimator AL --POWER 1120 --mu 0.035500000000000004  --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 03 --powerestimator AL --POWER 1120 --mu 0.035500000000000004  --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 04 --powerestimator AL --POWER 1120 --mu 0.035500000000000004  --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 05 --powerestimator AL --POWER 1120 --mu 0.035500000000000004  --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 06 --powerestimator AL --POWER 1120 --mu 0.035500000000000004  --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 07 --powerestimator AL --POWER 1120 --mu 0.035500000000000004  --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 08 --powerestimator AL --POWER 1120 --mu 0.035500000000000004  --projectname PowerAwareAugmentedLagrangian &
python3 experiment.py --DATASET 09 --SEED 09 --powerestimator AL --POWER 1120 --mu 0.035500000000000004  --projectname PowerAwareAugmentedLagrangian &

wait
