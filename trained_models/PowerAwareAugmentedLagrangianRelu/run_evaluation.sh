#!/bin/bash

#SBATCH --partition=single
#SBATCH --ntasks-per-node=40
#SBATCH --time=72:00:00
#SBATCH --job-name=AL_ReLU_Evaluation
#SBATCH --error=%x.%j.err
#SBATCH --output=%x.%j.out

python3 Evaluation.py
