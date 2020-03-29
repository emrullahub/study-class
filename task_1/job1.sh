#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=00:05:00
#SBATCH --partition=shas
#SBATCH --ntasks=1
#SBATCH --job-name=job1
#SBATCH --output=job1.%j.out


# run the hello.py
python /path/to/file/hello.py


