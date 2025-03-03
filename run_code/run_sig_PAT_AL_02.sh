#!/bin/bash

#SBATCH --partition=normal
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=PAT_AL
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out

python3 experiment.py --DATASET 01 --SEED 00 --powerestimator AL --POWER 240 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 01 --powerestimator AL --POWER 240 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 02 --powerestimator AL --POWER 240 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 03 --powerestimator AL --POWER 240 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 04 --powerestimator AL --POWER 240 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 05 --powerestimator AL --POWER 240 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 06 --powerestimator AL --POWER 240 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 07 --powerestimator AL --POWER 240 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 08 --powerestimator AL --POWER 240 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 09 --powerestimator AL --POWER 240 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 00 --powerestimator AL --POWER 480 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 01 --powerestimator AL --POWER 480 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 02 --powerestimator AL --POWER 480 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 03 --powerestimator AL --POWER 480 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 04 --powerestimator AL --POWER 480 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 05 --powerestimator AL --POWER 480 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 06 --powerestimator AL --POWER 480 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 07 --powerestimator AL --POWER 480 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 08 --powerestimator AL --POWER 480 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 09 --powerestimator AL --POWER 480 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 00 --powerestimator AL --POWER 720 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 01 --powerestimator AL --POWER 720 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 02 --powerestimator AL --POWER 720 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 03 --powerestimator AL --POWER 720 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 04 --powerestimator AL --POWER 720 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 05 --powerestimator AL --POWER 720 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 06 --powerestimator AL --POWER 720 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 07 --powerestimator AL --POWER 720 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 08 --powerestimator AL --POWER 720 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 09 --powerestimator AL --POWER 720 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 00 --powerestimator AL --POWER 960 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 01 --powerestimator AL --POWER 960 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 02 --powerestimator AL --POWER 960 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 03 --powerestimator AL --POWER 960 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 04 --powerestimator AL --POWER 960 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 05 --powerestimator AL --POWER 960 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 06 --powerestimator AL --POWER 960 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 07 --powerestimator AL --POWER 960 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 08 --powerestimator AL --POWER 960 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 01 --SEED 09 --powerestimator AL --POWER 960 --mu 0.074 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &

wait
