#!/usr/bin/env bash

# This script takes in one tar file as an argument
# checks to ensure that it extracts properly (not corrupted)
# then generates an md5sum of the tar (if it isn't corrupted)
# Author: Alexis Lucattini - https://www.github.com/alexiswl

tar_file=$1

if ! tar -tf ${tar_file} &> /dev/null; then
	echo "tar file corrupted"
else 
	md5sum ${tar_file}
fi

