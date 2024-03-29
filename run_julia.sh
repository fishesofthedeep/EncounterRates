#!/bin/bash
#SBATCH --partition=compute         # Queue selection
#SBATCH --job-name=Encounter_rates       # Job name
#SBATCH --mail-type=ALL             # Mail events (BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=matthew.woodstock@whoi.edu  # Where to send mail
#SBATCH --ntasks=1                  # Run on a single CPU
#SBATCH --cpus-per-task=4	# Nubmer of CPU cores per task
#SBATCH --mem=10gb                   # Job memory request
#SBATCH --time=24:00:00             # Time limit hrs:min:sec
#SBATCH --output=serial_job_%j.err  # Standard error
#SBATCH --output=serial_job_%j.out  # Standard output
 
date
 
module load julia                  # Load the julia module
 
echo "Running julia script for Encounter Rates"
 
julia /vortexfs1/scratch/matthew.woodstock/EncounterRates/src/poseidon_submission.jl
 
date
