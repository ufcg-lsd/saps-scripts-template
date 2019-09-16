#!/bin/bash

## This script calculates the evapotranspiration data based on the previous phases of the SAPS pipeline

## Checking args
if [ $# -ne 4 ]
then
  echo "Usage: $0 input_path preprocessing_path output_path metadata_path"
  exit 1
fi

## args
INPUT_DIR_PATH=$1
PREPROCESSING_DIR_PATH=$2
OUTPUT_DIR_PATH=$3
METADATA_DIR_PATH=$4

## Exit code
# exit code `0` indicates a successful execution. Any other number indicates failure.
