# Objective
InputDownload is responsible to download the input data needed to compute ET, including the Landsat imagery and any other relavant data such as metereological information.

# Usage

The InputDownload phase should be wrapped by a `run.sh`. This script could be used as follow:

```
./run.sh dataset region date output_path metadata_path
```

- `dataset` indicates the landsat collection (landsat_5, landsat_7 or landsat_8) to which the image belongs;
- `region` is the identifier of the scene (geographic location) to which an image belongs, i.e. the path / row of the scene. These identifiers can be found in the [LandLook](https://landlook.usgs.gov/viewer.html) website through the `Map Overlay > WRS2 Path / Row Overlay` option. We use the `PPPRRR` format, in which, PPP is the path (with 3 digits) and RRR is the row (also with 3 digits);
- `date` is the day the image was taken by the Landsat satelite. Here we adopt the `YYYY-MM-DD` format;
- `output_path` is the path to the directory in which the downloaded information will be stored;
- `metadata_path` is the path to the directory in which metadata information should be stored (e.g. execution logs).

This data is passed as a parameter to the `run.sh` script that will accomplish its purpose (as described above).

# Exit code

The `run.sh` script exit code `0` indicates a successful execution. Any other number indicates failure. In particular, `3` indicates that a Landsat image was not found for the given paramenters.
