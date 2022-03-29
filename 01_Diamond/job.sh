#!/bin/bash
#module load for Quantum Espresso
#SBATCH --job-name=nconex23
#SBATCH --time=4:00:00
#SBATCH --partition=defq
#SBATCH --ntasks=4
##SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=2000M

module load QuantumESPRESSO/6.8-foss-2021b

srun --reservation=ntp42_70 -n 4 pw.x -inp diamond.scf.in > diamond.scf.out
