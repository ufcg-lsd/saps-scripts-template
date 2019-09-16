#!/bin/bash

## This script downloads the input data for later processing.

## Checking args
if [ $# -ne 5 ]
then
  echo "Usage: $0 landsat_X PPPRRR YYYY-MM-DD output_path metadata_path"
  exit 1
fi

## args
IMAGE_DATASET=$1
IMAGE_PATHROW=$2
IMAGE_DATE=$3
OUTPUT_DIR_PATH=$4
METADATA_DIR_PATH=$5

## Exit code
# exit code `0` indicates a successful execution. Any other number indicates failure. 
# In particular, `3` indicates that a Landsat image was not found for the given paramenters.
