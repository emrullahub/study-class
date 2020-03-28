#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=01:00:00
#SBATCH --partition=shas
#SBATCH --ntasks=1
#SBATCH --job-name=shjob
#SBATCH --output=shjob.%j.out

# set start date
start=`date +%s`


# go to file's dir and print all the nuclear genes. Then print another sam file.

cd /truba/home/emyilmaz/study-class/task_3_2/ | ./sorting_nuc.sh > N_den_cickoy_4784_01_sorted_proper_rmdup_Chr1_sh.sam

# analyze the bam file

samtools flagstat ~/study-class/task_3_2/N_den_cickoy_4784_01_sorted_proper_rmdup.bam > ~/study-class/task_3_2/dir/analyze_result.out 
end=`date +%s` # end date

runtime=$((end-start)) # calculate the runtime
echo "This takes only $runtime second..." # and print work's runtime

