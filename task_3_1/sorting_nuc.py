#!/usr/bin/python


with open('/truba/home/emyilmaz/study-class/task_3_1/N_den_cickoy_4784_01_sorted_proper_rmdup.sam', 'r') as f:
	for line in f:
		if 'mitochondria' not in line and  'chloroplast' not in line:

			print(line)
