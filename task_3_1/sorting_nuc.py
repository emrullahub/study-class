#!/usr/bin/python


with open('/path/to/file.sam', 'r') as f:
	for line in f:
		if 'mitochondria' not in line and  'chloroplast' not in line:

			print(line)
