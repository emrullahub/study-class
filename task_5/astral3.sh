#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=00:05:00
#SBATCH --partition=shas
#SBATCH --ntasks=1
#SBATCH --job-name=job1
#SBATCH --output=output3.sh.%j.out


start=`date +%s%N` # start the time

mkdir -p ~/study-class/task1/${1}_out # create a dir named $1_out

# analyze $1 and send $1's output to $1_out dir.
java -jar ~/study-class/task_5/ASTRAL/Astral/astral.5.7.3.jar -i $1 | tee ~/study-class/task1/${1}_out/${1}.out


end=`date +%s%N` # end date
# execution time
echo "This takes only $(echo "scale=3;(${end} - ${start})/(1*10^09)" | bc) seconds"
