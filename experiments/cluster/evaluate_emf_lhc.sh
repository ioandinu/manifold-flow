#!/bin/bash

#SBATCH --job-name=e-emf-lhc
#SBATCH --output=log_evaluate_emf_lhc.log
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=32GB
#SBATCH --time=7-00:00:00
# #SBATCH --gres=gpu:1

source activate ml
export OMP_NUM_THREADS=1
cd /scratch/jb6504/manifold-flow/experiments

python -u evaluate.py --modelname small --dataset lhc --algorithm emf --outercouplingmlp --outercouplinglayers 1 --modellatentdim 9  --observedsamples 100 --dir /scratch/jb6504/manifold-flow