#!/bin/bash

#SBATCH --partition=normal
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=PAT_AL
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out

python3 mlflow_experiment.py --DATASET 00 --SEED 00 --powerestimator AL --POWER 200 --projectname v4_MlflowPowerAwareAugmentedLagrangian &
python3 mlflow_experiment.py --DATASET 01 --SEED 00 --powerestimator AL --POWER 200 --projectname v4_MlflowPowerAwareAugmentedLagrangian &
python3 mlflow_experiment.py --DATASET 02 --SEED 00 --powerestimator AL --POWER 200 --projectname v4_MlflowPowerAwareAugmentedLagrangian &
python3 mlflow_experiment.py --DATASET 03 --SEED 00 --powerestimator AL --POWER 200 --projectname v4_MlflowPowerAwareAugmentedLagrangian &
python3 mlflow_experiment.py --DATASET 04 --SEED 00 --powerestimator AL --POWER 200 --projectname v4_MlflowPowerAwareAugmentedLagrangian &
python3 mlflow_experiment.py --DATASET 05 --SEED 00 --powerestimator AL --POWER 200 --projectname v4_MlflowPowerAwareAugmentedLagrangian &
python3 mlflow_experiment.py --DATASET 06 --SEED 00 --powerestimator AL --POWER 200 --projectname v4_MlflowPowerAwareAugmentedLagrangian &
python3 mlflow_experiment.py --DATASET 07 --SEED 00 --powerestimator AL --POWER 200 --projectname v4_MlflowPowerAwareAugmentedLagrangian &
python3 mlflow_experiment.py --DATASET 08 --SEED 00 --powerestimator AL --POWER 200 --projectname v4_MlflowPowerAwareAugmentedLagrangian &
python3 mlflow_experiment.py --DATASET 09 --SEED 00 --powerestimator AL --POWER 200 --projectname v4_MlflowPowerAwareAugmentedLagrangian &
python3 mlflow_experiment.py --DATASET 10 --SEED 00 --powerestimator AL --POWER 200 --projectname v4_MlflowPowerAwareAugmentedLagrangian &
python3 mlflow_experiment.py --DATASET 11 --SEED 00 --powerestimator AL --POWER 200 --projectname v4_MlflowPowerAwareAugmentedLagrangian &
python3 mlflow_experiment.py --DATASET 12 --SEED 00 --powerestimator AL --POWER 200 --projectname v4_MlflowPowerAwareAugmentedLagrangian &

wait
