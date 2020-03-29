#!/bin/bash
#this script takes username(second line)from opening_ req.txt
username=sed -n '1p' opening_req.txt
echo "$username"
