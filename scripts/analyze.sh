#!/bin/bash

#SBATCH --nodes=1
##SBATCH --ntasks=1
#SBATCH --exclude=hpc1,hpc2,hpc3,hpc4,hpc5,hpc6,hpc7,hpc8,hpc9,vine3,vine4,vine6,vine11,vine12,lion17,rose7,rose8,rose9
##SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=1
#SBATCH --mem=16GB
#SBATCH --time=1:00:00
#SBATCH --array=0
#SBATCH --job-name=analyze
#SBATCH --output=analyze_%A_%a.out

module purge
#module load cuda-10.0
source /home/eo41/venv/bin/activate

python -u /misc/vlgscratch4/LakeGroup/emin/bold5000/ROIs/analyze.py 

echo "Done"
