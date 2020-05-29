#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=02:00:00
#SBATCH --partition=shas
#SBATCH --ntasks=1
#SBATCH --job-name=T1
#SBATCH --output=T1.%j.out


# default model with parsimony 20 random 20

programname=$0
data_loc=$1
model_name=$2;model_name=${model_name:-GTR+G}
out_name=$3;out_name=${out_name:-T1}


function usage {
    echo "usage: $programname [-data_loc] [model=GTR+G] [output_name=T1]"
    exit 1
}
if [ $# -lt 1 ] ; then
	usage
else
	./raxml-ng --msa $data_loc --model $model_name --prefix $out_name --threads 2 --seed 2
fi
