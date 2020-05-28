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
branch_len=$3;branch_len="${branch_len:-scaled}"
out_name=$4;out_name="${out_name:-P1}"

function usage {
    echo "usage: $programname [-data_loc] [your_part.model] [branch_length] [output_name]"
    exit 1
}
if [ $# -lt 1 ] ; then
        usage
else
        ./raxml-ng --msa $data_loc --threads 2 --seed 2 --model $part_model --force --brlen $branch_len --prefix $out_name
fi
