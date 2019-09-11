#!/bin/bash

## Objetive: Pre-processing of input data
## For example: $0 /tmp/input /tmp/output /tmp/metadata

## Checking args
if [ $# -ne 3 ]
then
  echo "Usage: $0 input_path output_path metadata_path"
  exit 1
fi

## Capture args
INPUT_DIR_PATH=$1
OUTPUT_DIR_PATH=$2
METADATA_DIR_PATH=$3





## Exit code
# This script should have the following return pattern:
# - `0` represents a successful execution.
# And any other exit code will be considered failed.
