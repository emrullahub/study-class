#!/bin/bash
#this script takes password(first line)from opening_ req.txt

password=sed -n '2p' opening_req.txt
echo "$password"
