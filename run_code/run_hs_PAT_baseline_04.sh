#!/bin/bash

#SBATCH --partition=single
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=PAT_AL
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out

python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.0   --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.02  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.04  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.06  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.08  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.1   --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.12  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.14  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.16  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.18  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.2   --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.22  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.24  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.26  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.28  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.3   --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.32  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.34  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.36  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.38  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.4   --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.42  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.44  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.46  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.48  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.5   --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.52  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.54  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.56  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.58  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.6   --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.62  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.64  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.66  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.68  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.7   --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.72  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.74  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.76  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.78  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.8   --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.82  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.84  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.86  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.88  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.9   --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.92  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.94  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.96  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 0.98  --act hs --projectname PowerAwareBaselineHS &
python3 experiment_baseline.py --DATASET 3  --powerestimator power  --powerbalance 1.0   --act hs --projectname PowerAwareBaselineHS &

wait
