# SAPS development tutorial
This tutorial explains how to develop new algorithms for the SEB Automated Processing Service (SAPS). The SAPS calculates evapotranspiration in a workflow with three stages: 1) **Input Downloading**; 2) **Preprocessing**, and 3) **Processing**.
 
In the first stage, **Input Downloading**, the Landsat satellite imagery is downloaded to the SAPS processing infrastructure. Any other data, including meteorological information, used in the next steps, are downloaded by the algorithms implemented in this first stage.
 
In the second stage, **Preprocessing**, the dataset downloaded in the first stage can be treated before the processing. Typical treatment includes checking if the data is adequate to the next stage (e.g. not entirely covered by clouds and shadows) or any data transformation.
 
Finally, in the **Processing** stage, the evapotranspiration is calculated based on the data generated by the previous stages.
  
SAPS supports multiple algorithms to any of these stages. There is no restriction on internal design aspects of the implementation of these algorithms. Their implementatins need only to be able to be packaged as a Docker image. In addition to this requirement, the implementations also need to conform to a contract established by the service. This contracts dictates how the service invokse the implementation, after its encapsulation within the container. Also, the contract determines how the implementation reports exit codes, in case of success or failure, the conventions to handle input and output data, as well as how to generate provenance data.

In practice, this contract means that, any implementation should be wrapped by a bash script that has a predefined name,  `run.sh`. This script should be invoked with four parameters: the path to the root directory of the tree where input and output files for the workflow are stored, the Landsat dataset descriptor, which indicates which Landsat satellite should be used (5, 7 or 8),  the Landsat scene of interest, and the date of interest.

As part of the contract, the `run.sh` program should only exit with code *0* in case of successful execution. Regarding the input and output data, it has a pre-defined structure, thus any program knows where to find input data and where to store output data. The structure of the tree is shown below:

```
.
+-- $task_id
|   +-- inputdownloading
|   +-- preprocessing
|   +-- processing
```

Finally, one of the outputs generated by the program is an application metadata text file, named `application.metadata`, which describes the input files used, the other output files that are produced, and the description of the possible exit codes generated in case of failures}. The following snippet is a blueprint for such script.

```
#!/bin/bash

## This script is a generic blueprint for all SAPS stages

## Checking args
if [ $# -ne 4 ]
then
  echo "Usage: $0 root_dir dataset region date"
  exit 1
fi

## args
# root_dir is a path to the root directory to store both data and metadata to all SAPS stages
# dataset  indicates the landsat collection (landsat_5, landsat_7 or landsat_8) to which the 
#            image belongs
# region   is the identifier of the scene (geographic location) to which an image belongs, 
#            i.e. the path / row of the scene. These identifiers can be found in the LandLook 
#            service (https://landlook.usgs.gov/viewer.html) website through the 
#            Map Overlay > WRS2 Path / Row Overlay option. We use the PPPRRR format, 
#            in which, PPP is the path (with 3 digits) and RRR is the row (also with 3 digits)
# date     is the day the image was taken by the Landsat satelite. We adopt the YYYY-MM-DD format

ROOT_DIR=$1
DATASET=$2
REGION=$3
DATE=$4

## Exit code
# exit code 0 indicates a successful execution. Any other number indicates failure.
EXIT_CODE=0
exit $EXIT_CODE
```

Further information regarding the implementation of new algorithms can be gathered from the repositories mantained by the Federal University of Campina Grande (UFCG) for its SAPS deploy. UFCG maintains a repository for each phase of the SAPS pipeline (listed below). Each new suppported algorithm is kept as a branch of one of these repositories.

- [UFCG Inputdownload repository](https://github.com/ufcg-lsd/saps-scripts-inputdownload)
- [UFCG Preprocessing repository](https://github.com/ufcg-lsd/saps-scripts-preprocessing)
- [UFCG Processing repository](https://github.com/ufcg-lsd/saps-scripts-processing)
