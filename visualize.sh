#!/bin/bash
# This script takes duplication distributions by using $1 the path to the mcmc.txt file, $2, the duplication index and $3 the absolute path, file name to where the file will be saved
set -ex
echo "Subsetting data"
cat $1 | cut -f$2 | tail -n +2 > $3
