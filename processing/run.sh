#!/bin/bash

## Objetive: Run the algorithm for the input data downloaded and/or preprocessed
## For example: $0 /tmp/input /tmp/output /tmp/preprocessing /tmp/metadata

## Checking args
if [ $# -ne 4 ]
then
  echo "Usage: $0 input_path output_path preprocessing_path metadata_path"
  exit 1
fi

## Capture args
INPUT_DIR_PATH=$1
OUTPUT_DIR_PATH=$2
PREPROCESSING_DIR_PATH=$3
METADATA_DIR_PATH=$4





## Exit code
# The `run.sh` script should have the following return pattern:
# - `0` represents a successful execution.
# And any other exit code will be considered failed.
