# Objective
Establish a contract for the steps of downloading, pre-processing and processing in the context of SAPS.

# Explanation
In many systems today, the steps of downloading, preprocessing and processing are quite common, what changes is the way it is made, e.g., the programming language, the paradigm adopted, the design of the code and among other characteristics. With that in mind, SAPS sets a standard in each of these steps.
In each of the folders the `run.sh` script format is described for each step as well as its documentation.
To fit a new way of solving one of the steps, the entire solution must be built in a Docker, but it must contain the `run.sh` script in the` / home / saps` directory that has the skeleton described in the same template . Because the solution was encapsulated in a Docker, it expected `Dockerfile` to be possible to build the environment.