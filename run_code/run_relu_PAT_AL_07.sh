#!/bin/bash

#SBATCH --partition=single
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=PAT_AL
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out

python3 experiment.py --DATASET 06 --SEED 00 --powerestimator AL --POWER 200 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 01 --powerestimator AL --POWER 200 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 02 --powerestimator AL --POWER 200 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 03 --powerestimator AL --POWER 200 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 04 --powerestimator AL --POWER 200 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 05 --powerestimator AL --POWER 200 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 06 --powerestimator AL --POWER 200 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 07 --powerestimator AL --POWER 200 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 08 --powerestimator AL --POWER 200 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 09 --powerestimator AL --POWER 200 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 00 --powerestimator AL --POWER 400 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 01 --powerestimator AL --POWER 400 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 02 --powerestimator AL --POWER 400 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 03 --powerestimator AL --POWER 400 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 04 --powerestimator AL --POWER 400 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 05 --powerestimator AL --POWER 400 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 06 --powerestimator AL --POWER 400 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 07 --powerestimator AL --POWER 400 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 08 --powerestimator AL --POWER 400 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 09 --powerestimator AL --POWER 400 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 00 --powerestimator AL --POWER 600 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 01 --powerestimator AL --POWER 600 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 02 --powerestimator AL --POWER 600 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 03 --powerestimator AL --POWER 600 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 04 --powerestimator AL --POWER 600 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 05 --powerestimator AL --POWER 600 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 06 --powerestimator AL --POWER 600 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 07 --powerestimator AL --POWER 600 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 08 --powerestimator AL --POWER 600 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 09 --powerestimator AL --POWER 600 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 00 --powerestimator AL --POWER 800 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 01 --powerestimator AL --POWER 800 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 02 --powerestimator AL --POWER 800 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 03 --powerestimator AL --POWER 800 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 04 --powerestimator AL --POWER 800 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 05 --powerestimator AL --POWER 800 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 06 --powerestimator AL --POWER 800 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 07 --powerestimator AL --POWER 800 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 08 --powerestimator AL --POWER 800 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &
python3 experiment.py --DATASET 06 --SEED 09 --powerestimator AL --POWER 800 --mu 0.001 --act relu --projectname PowerAwareAugmentedLagrangianRelu &

wait
