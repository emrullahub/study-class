#!/bin/bash

awk '$3 !~ (/mitochondria|chloroplast/)' N_den_cickoy_4784_01_sorted_proper_rmdup.sam > N_den_cickoy_4784_01_sorted_proper_rmdup_Chr1_sh.sam
