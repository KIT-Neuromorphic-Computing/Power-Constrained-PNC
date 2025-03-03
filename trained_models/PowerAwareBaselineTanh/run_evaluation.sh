#!/bin/bash

#SBATCH --partition=single
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=EVAL_tanh
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out

python3 Evaluation.py
