#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=02:00:00
#SBATCH --partition=shas
#SBATCH --ntasks=1
#SBATCH --job-name=COMP
#SBATCH --output=COMP.%j.out

programname=$0
data_loc=$1
model_name=$2;model_name="${model_name:-GTR+G}"
out_name=$3;out_name="${out_name:-T2}"
best_tree=$4


function usage {
    echo "usage: $programname [-data_loc] [model=GTR+G] [output_name=T3] [best_tree]"
    exit 1
}
if [ $# -lt 1 ] ; then
        usage
else
        ./raxml-ng --evaluate --msa $data_loc --model $model_name --prefix $out_name --tree $best_tree --threads 2 --seed 2
fi
