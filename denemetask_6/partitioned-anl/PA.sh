#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=02:00:00
#SBATCH --partition=shas
#SBATCH --ntasks=1
#SBATCH --job-name=PA
#SBATCH --output=PA.%j.out

programname=$0
data_loc=$1
part_model=$2
best_tree=$3
out_name=$4;out_name="${out_name:-P1}"

function usage {
    echo "usage: $programname [-data_loc] [your_part.model] [best_tree] [output_name]"
    exit 1
}
if [ $# -lt 1 ] ; then
        usage
else
        ./raxml-ng --evaluate --msa $data_loc --threads 2 --model $part_model --tree $best_tree --prefix $out_name -log verbose
fi
