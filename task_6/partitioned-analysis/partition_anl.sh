#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=02:00:00
#SBATCH --partition=shas
#SBATCH --ntasks=1
#SBATCH --job-name=PA
#SBATCH --output=PA.%j.out


# we can assign identical models to all partitions -->  prim.part
# but use different per-partition substitution matrices and rate heterogeneity models, and also split the first gene by codon position.

programname=$0
data_loc=$1
part_model=$2
best_tree=$3
out_name=$4;out_name="${out_name:-P1}"
brlen=$5;brlen="${brlen:-scaled}" # branch length default variable is scaled if not entered
function usage {
    echo "usage: $programname [-data_loc] [your_part.model] [best_tree] [output_name] [brlen: scaled]"
    exit 1
}
#if nothing but $0=programname entered, then show usage, else run the program
if [ $# -lt 1 ] ; then
        usage
else
        ~/study-class/task_6/raxml-ng --evaluate --msa $data_loc --threads 2 --model $part_model --tree $best_tree --prefix $out_name -log verbose --brlen $brlen --force
fi
