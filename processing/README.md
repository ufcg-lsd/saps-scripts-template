# Objective

Processing calculates the Evapotranspiration product based on the data downloaded and tranformed in the previous phases of the SAPS pipeline.

# Usage

The Processing phase should be wrapped by a `run.sh`. This script could be used as follow:

```
./run.sh input_path output_path preprocessing_path metadata_path
```

- `input_path` is the path to the directory containing the data downloaded by Inputdownload;
- `preprocessing_path` is the path to the directory containing the data preprocessed by Preprocessing;
- `output_path` is the output directory path of the Processing phase;
- `metadata_path` is the path of the metadata directory of the Processing phase.

# Exit code

The `run.sh` script exit code `0` indicates a successful execution. Any other number indicates failure.
