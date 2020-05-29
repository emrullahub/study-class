#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=04:00:00
#SBATCH --partition=shas
#SBATCH --ntasks=1
#SBATCH --job-name=jobT4
#SBATCH --output=jobT4.%j.out


# bootstrapping 100 trees as default

programname=$0
data_loc=$1
model_name=$2;model_name="${model_name:-GTR+G}"
out_name=$3;out_name="${out_name:-T3}"
numof_trees=$4;numof_trees="${numof_trees:-100}"

function usage {
    echo "usage: $programname [-data_loc] [model=GTR+G] [output_name=T1] [--bs-trees=100]"
    exit 1
}
if [ $# -lt 1 ] ; then
        usage
else
        ./raxml-ng --bootstrap --msa $data_loc --model $model_name --prefix $out_name --seed 333 --threads 2 --bs-trees $numof_trees
fi
