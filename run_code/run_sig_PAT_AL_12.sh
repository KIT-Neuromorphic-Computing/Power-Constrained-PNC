#!/bin/bash

#SBATCH --partition=single
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=PAT_AL
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out

python3 experiment.py --DATASET 11 --SEED 00 --powerestimator AL --POWER 280  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 01 --powerestimator AL --POWER 280  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 02 --powerestimator AL --POWER 280  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 03 --powerestimator AL --POWER 280  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 04 --powerestimator AL --POWER 280  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 05 --powerestimator AL --POWER 280  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 06 --powerestimator AL --POWER 280  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 07 --powerestimator AL --POWER 280  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 08 --powerestimator AL --POWER 280  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 09 --powerestimator AL --POWER 280  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 00 --powerestimator AL --POWER 560  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 01 --powerestimator AL --POWER 560  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 02 --powerestimator AL --POWER 560  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 03 --powerestimator AL --POWER 560  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 04 --powerestimator AL --POWER 560  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 05 --powerestimator AL --POWER 560  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 06 --powerestimator AL --POWER 560  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 07 --powerestimator AL --POWER 560  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 08 --powerestimator AL --POWER 560  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 09 --powerestimator AL --POWER 560  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 00 --powerestimator AL --POWER 840  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 01 --powerestimator AL --POWER 840  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 02 --powerestimator AL --POWER 840  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 03 --powerestimator AL --POWER 840  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 04 --powerestimator AL --POWER 840  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 05 --powerestimator AL --POWER 840  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 06 --powerestimator AL --POWER 840  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 07 --powerestimator AL --POWER 840  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 08 --powerestimator AL --POWER 840  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 09 --powerestimator AL --POWER 840  --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 00 --powerestimator AL --POWER 1120 --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 01 --powerestimator AL --POWER 1120 --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 02 --powerestimator AL --POWER 1120 --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 03 --powerestimator AL --POWER 1120 --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 04 --powerestimator AL --POWER 1120 --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 05 --powerestimator AL --POWER 1120 --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 06 --powerestimator AL --POWER 1120 --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 07 --powerestimator AL --POWER 1120 --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 08 --powerestimator AL --POWER 1120 --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &
python3 experiment.py --DATASET 11 --SEED 09 --powerestimator AL --POWER 1120 --mu 0.003 --act sigmoid --projectname PowerAwareAugmentedLagrangianSigmoid &

wait
