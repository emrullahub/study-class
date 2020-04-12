#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=00:05:00
#SBATCH --partition=shas
#SBATCH --ntasks=1
#SBATCH --job-name=job1
#SBATCH --output=output.%j.out


#java -jar /truba/home/emyilmaz/study-class/task_5/ASTRAL/Astral/astral.5.7.3.jar -i /truba/home/emyilmaz/study-class/task_5/ASTRAL/Astral/test_data/song_mammals.424.gene.tre > /truba/home/emyilmaz/study-class/task_5/outut.out
mkdir -p ~/study-class/task_5/${1}_out && touch ~/study-class/task_5/${1}_out/${1}.out

java -jar ~/study-class/task_5/ASTRAL/Astral/astral.5.7.3.jar -i $1 | tee ~/study-class/task_5/${1}_out/${1}.out
