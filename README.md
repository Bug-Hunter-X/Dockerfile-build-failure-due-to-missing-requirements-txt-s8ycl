# Dockerfile Bug: Missing requirements.txt

This repository demonstrates a common error in Dockerfiles: failure to handle the absence of a `requirements.txt` file.  The provided `Dockerfile_bug.dockerfile` attempts to install Python packages using `pip`, but it doesn't check if `requirements.txt` exists. This leads to a build failure if the file is missing.

The solution, `Dockerfile_solution.dockerfile`, addresses this by adding a conditional check using `&&` to ensure that `pip install` only runs if `requirements.txt` is present.

## How to reproduce the bug
1. Clone this repository.
2. Try to build the image using `docker build -t buggy-image -f Dockerfile_bug.dockerfile .`
3. Observe the build failure due to the missing `requirements.txt`.

## How to fix the bug
1. Use the `Dockerfile_solution.dockerfile` which includes an existence check for `requirements.txt`.
2. Build the image using `docker build -t fixed-image -f Dockerfile_solution.dockerfile .`
3. The image should build successfully (assuming all other dependencies are met).