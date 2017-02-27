#!/usr/bin/env bash

# Author: Alexis Lucattini - https://www.github.com/alexiswl
# This script takes in tar files as an argument
# checks to ensure that it extracts properly (not corrupted)
# then generates an md5sum of the tar (if it isn't corrupted)

# List of functions needed

# Print to stderr instead of stdout
function tostderr {
	echo "$@" 1>&2; 
}

# Display usage
function display_usage {
	echo "Usage: tiam5 [-h | --help] <files>"	
}

help_message='Optional arguments:
	      -h | --help:    Display this message
              
	      Positional arguments:
	      <files>:        List of tar files to check integrity and md5sum'

# Check there exists at least one argument
[ $# -eq 0 ] && { display_usage; exit 1; }

# Iterate through command line arguments (files and directories)
for tar_file in "$@"
do
	if [ ${tar_file} == "-h" ] || [ ${tar_file} == "--help" ]; then  # help option
		display_usage;
		echo "${help_message}"
		exit 0
	elif [ ! -e tar_file ]; then  # If the file provided is not a file 
		tostderr "Error: ${tar_file} is not a file."
		exit 1  # Now exit the script
	elif ! tar -tf ${tar_file} &> /dev/null; then
		tostderr "${tar_file}"
	else 
		md5sum ${tar_file}
	fi
done
exit 0  # Script exited sucessfully. 
