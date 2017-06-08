# Starting the Docker Virtual Infrastructure
* Find out more about Docker: https://docker.com
* Install Docker: https://docs.docker.com/#run-docker-anywhere

## Installing the Find errors
```bash
# Checkout this repository
git clone https://github.com/dbgbench/dbgbench.github.io.git dbgbench
cd dbgbench/docker

# Install and run docker container for find
./run.sh find
```
* to get buggy source
* to get buggy executables, and  
* to get infrastructure for all errors in **findutils**.
* *More details*: [README.find.txt](docker/README.find.txt)

## Installing the GREP errors
```bash
# Checkout this repository
git clone https://github.com/dbgbench/dbgbench.github.io.git dbgbench
cd dbgbench/docker

# Install and run docker container for grep
./run.sh grep
``` 
* to get buggy source
* to get buggy executables, and  
* to get infrastructure for all errors in **grep**.
* *More details*: [README.grep.txt](docker/README.grep.txt)

There is a UI available for those who prefer Desktop:
* *Details for find*: [UI.README.find.txt](docker/UI.README.find.txt)
* *Details for grep*: [UI.README.grep.txt](docker/UI.README.grep.txt)

## Example Usage: Checking Patch Plausibility
* See [https://dbgbench.github.io/patches/](patches/)
