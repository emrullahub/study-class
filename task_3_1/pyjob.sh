#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=01:00:00
#SBATCH --partition=shas
#SBATCH --ntasks=1
#SBATCH --job-name=pyjob
#SBATCH --output=pyjob.%j.out

# set start date

#start=`date +%s`


# go to file's dir and print all the nuclear genes. Then print another sam file.

cd /truba/home/emyilmaz/study-class/task_3_1 | time  python sorting_nuc.py > N_den_cickoy_4784_01_sorted_proper_rmdup_Chr1_py.sam

time samtools flagstat ~/study-class/task_3_1/N_den_cickoy_4784_01_sorted_proper_rmdup.bam > ~/study-class/task_3_1/dir/analyze_result.out

# analyze the bam file

#time samtools flagstat ~/study-class/task_3_1/N_den_cickoy_4784_01_sorted_proper_rmdup.bam > ~/study-class/task_3_1/dir/analyze_result.out 
#end=`date +%s` # end date

# runtime=$((end-start)) # calculate the runtime

##echo "This takes only $runtime second..." # and print work's runtime
