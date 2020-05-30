#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=02:00:00
#SBATCH --partition=shas
#SBATCH --ntasks=1
#SBATCH --job-name=COMP
#SBATCH --output=COMP.%j.out


# which model is the best for this data

programname=$0
data_loc=$1 # data location
model_name=$2;model_name="${model_name:-GTR+G}" # default variable is GTR+G if not entered
out_name=$3;out_name="${out_name:-T2}"
best_tree=$4 # outputname.raxml.bestTree 


function usage {
    echo "usage: $programname [-data_loc] [model=GTR+G] [output_name=T3] [best_tree]"
    exit 1
}

# if nothing but $0=programname entered, then show usage, else run the program
if [ $# -lt 1 ] ; then
        usage
else
        ./raxml-ng --evaluate --msa $data_loc --model $model_name --prefix $out_name --tree $best_tree --threads 2 --seed 2
fi
