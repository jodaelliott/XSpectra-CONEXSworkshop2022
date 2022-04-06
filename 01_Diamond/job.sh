#!/bin/bash
#SBATCH -p scarf
#SBATCH -C amd
#SBATCH -n 32
#SBATCH -t 30
#SBATCH -o %J.log
#SBATCH -e %J.err

module load contrib/dls-spectroscopy/quantum-espresso/6.5-intel-18.0.3

input=diamond.scf

mpirun -np 2 pw.x -inp $input'.in' > $input'.out'
