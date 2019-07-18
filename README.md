# Objective
Establish a contract for the steps of downloading, pre-processing and processing in the context of SAPS.

# Explanation
In many systems today, the steps of downloading, preprocessing and processing are quite common, what changes is the way it is made, e.g., the programming language, the paradigm adopted, the design of the code and among other characteristics. With that in mind, SAPS sets a standard in each of these steps.
In each of the folders the `run.sh` script format is described for each step as well as its documentation.
To fit a new way of solving one of the steps, the entire solution must be built in a Docker, but it must contain the `run.sh` script in the`/home/saps` directory that has the skeleton described in the same template . Because the solution is encapsulated in a Docker, wait for the `Dockerfile` for the environment configuration.
Basically `run.sh` in the`/home/saps` directory will be called by the components of the SAPS architecture simply by building the solution for each of the steps.

# Model
Currently, SAPS follows the following model:
- Each step (download, preprocessing and process) in different repository
- Each branch in the repositories refers to the different forms/versions of the solution
- The branch name must be significant, probably the name that will be used in the SAPS GUI (for easy understanding).

# SAPS repositories
Below are the repositories of each of the steps:
- [Inputdownload](https://github.com/ufcg-lsd/saps-scripts-inputdownload)
- [Preprocessing](https://github.com/ufcg-lsd/saps-scripts-preprocessing)
- [Processing](https://github.com/ufcg-lsd/saps-scripts-processing)