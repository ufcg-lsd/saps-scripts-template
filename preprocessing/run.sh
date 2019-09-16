#!/bin/bash

## This script pre-processes the data downloaded by the InputDownload phase

## Checking args
if [ $# -ne 3 ]
then
  echo "Usage: $0 input_path output_path metadata_path"
  exit 1
fi

## args
INPUT_DIR_PATH=$1
OUTPUT_DIR_PATH=$2
METADATA_DIR_PATH=$3

## Exit code
# exit code `0` indicates a successful execution. Any other number indicates failure. 
