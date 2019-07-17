# Objective
Its purpose is to do any kind of preprocessing of input data. For example: generate other data, standardize projection, remove tiling and/or compression.

# Parameters
The template used by Preprocessing requires a `run.sh` script that receives the following information:
- `Input path` is the path to the directory containing the data downloaded by Inputdownlaoder.
- `Output path` is the path to the directory that should contain all other data generated from the preprocessing run.
- `Metadata path` is the path to the directory that should contain all the metadata information for this step. For instance:
  - Execution log
  - Processing date

This data is passed as a parameter to the `run.sh` script that will accomplish its purpose (as described above).

# Usage
The `run.sh` script will receive the default parameters below:
```
./run.sh input_path output_path metadata_path
```
At where:
- `input_path` is the path to the directory containing the data downloaded by Inputdownload.
- `output_path` is the output directory path of the Preprocessing.
- `metadata_path` is the path of the metadata directory of the Preprocessing.

# Exit code
The `run.sh` script should have the following return pattern:
- `0` represents a successful execution.

And any other exit code will be considered failed.
