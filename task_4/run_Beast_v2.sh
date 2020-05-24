#!/bin/bash

#SBATCH -p mid1
#SBATCH -n 8
#SBATCH -N 1    

F1=$1
#beast -beagle_CPU -beagle_SSE -threads 8 $F1
beast -beagle_CPU -beagle_SSE $F1
