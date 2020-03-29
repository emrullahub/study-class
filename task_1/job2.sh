#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=00:05:00
#SBATCH --partition=shas
#SBATCH --qos=debug
#SBATCH --ntasks=1
#SBATCH --job-name=job2
#SBATCH --output=job2.%j.out

# go to program and run it

cd /path/to/file | ./hello.sh
