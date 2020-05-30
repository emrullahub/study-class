#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=02:00:00
#SBATCH --partition=shas
#SBATCH --ntasks=1
#SBATCH --job-name=T2
#SBATCH --output=T2.%j.out

# model with default variable 25 parsimony 25 random starting tree

programname=$0
data_loc=$1
model_name=$2;model_name="${model_name:-GTR+G}"
out_name=$3;out_name="${out_name:-T2}"
trees=$4;trees="${trees:-pars{25},rand{25}}"


function usage {
    echo "usage: $programname [-data_loc] [model=GTR+G] [output_name=T1] [trees=pars{25},rand{25}]"
    exit 1
}
if [ $# -lt 1 ] ; then
        usage
else
        ./raxml-ng --msa $data_loc --model $model_name --prefix $out_name --threads 2 --seed 2 --tree $trees
fi
#./raxml-ng --msa $1 --model $2 --prefix $3 --threads 2 --seed 2 --tree $4
