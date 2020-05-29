#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=02:00:00
#SBATCH --partition=shas
#SBATCH --ntasks=1
#SBATCH --job-name=CONV
#SBATCH --output=CONV.%j.out

programname=$0
best_tree=$1
bs_trees=$2
out_name=$3;out_name="${out_name:-CONV}"


function usage {
    echo "usage: $programname [-best_tree] [bs_trees] [output_name=CONV]"
    exit 1
}
if [ $# -lt 1 ] ; then
        usage
else
        ./raxml-ng --support --tree $best_tree --bs-trees $bs_trees --prefix $out_name --threads 2 --seed 2
fi
