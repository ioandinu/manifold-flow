#!/bin/bash



# MIXTURE MODEL ON POLYNOMIAL MANIFOLD

# sbatch --array 0-4 simulate.sh

#sbatch --array 0-4 train_flow_power.sh
#sbatch --array 0-4 train_pie_power.sh
#sbatch --array 0-4 train_gamf_power.sh
# sbatch --array 0-4 train_mf_power.sh
# sbatch --array 0-4 train_emf_power.sh

#sbatch --array 0-2 evaluate_truth_power.sh
#sbatch --array 0-2 evaluate_flow_power.sh
#sbatch --array 0-2 evaluate_pie_power.sh
#sbatch --array 0-6 evaluate_gamf_power.sh
#sbatch --array 0-2 evaluate_mf_power.sh
#sbatch --array 0-5 evaluate_mf_power.sh
#sbatch --array 0-5 evaluate_emf_power.sh



# PARTICLE PHYSICS

sbatch --array 0-4 train_mf_lhc40d.sh
sbatch --array 0-4 train_emf_lhc40d.sh
sbatch --array 0-4 train_flow_lhc40d.sh
sbatch --array 0-4 train_pie_lhc40d.sh
sbatch --array 0-4 train_flow_lhc2d.sh
