#!/bin/bash

#SBATCH --partition=single
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=PAT_AL
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out

python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.0   --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.02  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.04  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.06  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.08  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.1   --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.12  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.14  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.16  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.18  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.2   --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.22  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.24  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.26  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.28  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.3   --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.32  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.34  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.36  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.38  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.4   --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.42  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.44  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.46  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.48  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.5   --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.52  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.54  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.56  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.58  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.6   --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.62  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.64  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.66  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.68  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.7   --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.72  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.74  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.76  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.78  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.8   --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.82  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.84  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.86  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.88  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.9   --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.92  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.94  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.96  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 0.98  --act tanh --projectname PowerAwareBaselineTanh &
python3 experiment_baseline.py --DATASET 6  --powerestimator power  --powerbalance 1.0   --act tanh --projectname PowerAwareBaselineTanh &

wait
