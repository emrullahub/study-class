#!/bin/bash

#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=02:00:00
#SBATCH --partition=shas
#SBATCH --ntasks=1
#SBATCH --job-name=job1
#SBATCH --output=output3.sh.%j.out


#beast -beagle_CPU -beagle_SSE -threads 8 $F1


dir="Outputs"
mkdir -p $dir && cd $dir

java -jar ~/programs/beast/lib/launcher.jar -beagle_CPU -beagle_SSE $1
