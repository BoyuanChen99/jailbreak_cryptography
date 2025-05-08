#!/bin/bash

#SBATCH -q nvidia-xxl
#SBATCH -p nvidia
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --gres=gpu:a100:1
#SBATCH --time=23:59:59
#SBATCH --mem=50GB

# Set encoding parameter here
encoding=base_64

#SBATCH --job-name=nc-${encoding}

module purge

# Load the Conda module
source ~/.bashrc

# Activate your Conda environment
conda activate cipherword

# Lead to huggingface cache
export HF_HOME='/scratch/bc3194/huggingface_cache'

# Call python script with the encoding variable
python -u huggingface_inference.py --encoding=${encoding}
