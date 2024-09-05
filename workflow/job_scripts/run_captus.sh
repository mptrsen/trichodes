#!/bin/bash
#SBATCH --account=hpca
#SBATCH --ntasks=1
#SBATCH --cpus-per-task 1
#SBATCH -J captus
#SBATCH --mem-per-cpu=3200
#SBATCH --mail-user=malte.petersen@uni-bonn.de
#SBATCH --mail-type=ALL
#SBATCH -p partition=short
#SBATCH -o /home/mpetersen/projects/trichodes/captus.%j.out
#SBATCH -e /home/mpetersen/projects/trichodes/captus.%j.err

# conda activate?

# run captus
captus_assembly clean --help
#captus_assembly clean --reads data/raw --threads 48 --ram 32 --trimq 25 --maq 30 --concurrent 10
