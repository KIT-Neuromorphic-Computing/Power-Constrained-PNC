#!/bin/bash

#SBATCH --partition=single
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=PAT_AL
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out

python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.0   --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.02  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.04  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.06  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.08  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.1   --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.12  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.14  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.16  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.18  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.2   --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.22  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.24  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.26  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.28  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.3   --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.32  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.34  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.36  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.38  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.4   --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.42  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.44  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.46  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.48  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.5   --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.52  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.54  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.56  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.58  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.6   --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.62  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.64  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.66  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.68  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.7   --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.72  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.74  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.76  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.78  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.8   --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.82  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.84  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.86  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.88  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.9   --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.92  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.94  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.96  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 0.98  --act sigmoid --projectname PowerAwareBaselineSigmoid &
python3 experiment_baseline.py --DATASET 11  --powerestimator power  --powerbalance 1.0   --act sigmoid --projectname PowerAwareBaselineSigmoid &

wait
