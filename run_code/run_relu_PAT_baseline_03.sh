#!/bin/bash

#SBATCH --partition=single
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=PAT_AL
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out

python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.0   --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.02  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.04  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.06  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.08  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.1   --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.12  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.14  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.16  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.18  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.2   --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.22  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.24  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.26  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.28  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.3   --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.32  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.34  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.36  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.38  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.4   --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.42  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.44  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.46  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.48  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.5   --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.52  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.54  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.56  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.58  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.6   --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.62  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.64  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.66  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.68  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.7   --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.72  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.74  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.76  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.78  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.8   --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.82  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.84  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.86  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.88  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.9   --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.92  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.94  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.96  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 0.98  --act relu --projectname PowerAwareBaselineRelu &
python3 experiment_baseline.py --DATASET 2  --powerestimator power  --powerbalance 1.0   --act relu --projectname PowerAwareBaselineRelu &

wait
