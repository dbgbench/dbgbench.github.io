# Using Participant Patches
* Install and run the [docker virtual infrastructure](../docker/).
```bash

git clone https://github.com/dbgbench/dbgbench.github.io.git dbgbench
cd dbgbench/docker
./run.sh find
```
* Within the Docker container, apply the [patch](#list-of-errors-wpatches) of participant [Participant ID] for error [Error ID]:
```bash
cd ~/Desktop/[Error ID]/find
patch -p1 -l -f < [Error ID]/[Participant ID].patch
```

## Example 1: Dry-run-apply All Patches
You can simply copy-paste the following into your terminal.
```bash
# Change to grep if needed
PROJECT=find

# Make patches available locally
cd ~/Desktop
git config --global http.sslVerify false
git clone https://github.com/dbgbench/dbgbench.github.io.git dbgbench

# Loop over all errors and check patch applicability
for id in $(ls -1d ~/Desktop/${PROJECT}*/${PROJECT}.*); do
  pushd $(echo $id | rev | cut -d/ -f2- | rev)/$PROJECT > /dev/null

  error=$(echo $id | rev | cut -d/ -f1 | rev)
  for patch in $(ls -1d ~/Desktop/dbgbench/patches/$error/*.patch); do 
    patch -l -p1 --dry-run -f < $patch > /dev/null

    if [ $? -eq 0 ]; then
      printf "[v]\tCan "
    else
      printf "[x]\tCannot "
    fi
    echo "apply $(echo $patch | rev | cut -d/ -f1 | rev | cut -d. -f1)'s patch to $error ($(echo $id | rev | cut -d/ -f2 | rev))"
  done

  popd > /dev/null
done
```

## Example 2: Check Patch Plausibility
You can simply copy-paste the following into your terminal.
```bash
# Change to 'grep' if needed
PROJECT=find

# Make patches available locally
cd ~/Desktop
git config --global http.sslVerify false
git clone https://github.com/dbgbench/dbgbench.github.io.git dbgbench

# Loop over all errors and check patch plausibility
for id in $(ls -1d ~/Desktop/${PROJECT}*/${PROJECT}.*); do
  pushd $(echo $id | rev | cut -d/ -f2- | rev)/$PROJECT > /dev/null

  error=$(echo $id | rev | cut -d/ -f1 | rev)
  for patch in $(ls -1d ~/Desktop/dbgbench/patches/$error/*.patch); do

    # Apply patch
    patch -l -p1 -f < $patch > /dev/null
    if [ $? -ne 0 ]; then
      echo "[?] Cannot apply $(echo $patch | rev | cut -d/ -f1 | rev | cut -d. -f1)'s patch to $error ($(echo $id | rev | cut -d/ -f2 | rev))."
      patch -R -l -p1 -f < $patch > /dev/null
      continue;
    fi

    # Build new/patched version
    make > log.$error.txt 2>&1
    if [ $? -ne 0 ]; then
      echo "[?] Cannot build $error. More info: log.$error.txt"
      continue;
    fi

    # Test new/patched version
    ../test/test.sh $PWD > /dev/null 2>&1
    if [ $? -eq 0 ]; then
      printf "[v] Plausible patch"
    else
      printf "[x] Implausible patch"
    fi
    
    # Revert to old/buggy version
    patch -R -l -p1 -f < $patch > /dev/null
    echo " from $(echo $patch | rev | cut -d/ -f1 | rev | cut -d. -f1) for $error ($(echo $id | rev | cut -d/ -f2 | rev))"

  done
  
  # make sure to build correct (reverted) version
  make > /dev/null 2>&1

  popd > /dev/null
done
```

## Notes
* The **participants** fixed an error for the version right after it was introduced.
* The **developer** fixed an error often many years after it was introduced. Hence, sometimes there is some ingenuity needed to retrofit the developer-patch to the error-introducing version.
* Sometimes there are **more than 12 patches** per error. This is due to the fact that some candidates decided to skip out after trying a few errors.
* Sometimes there are **less than 12 patches** per error. This is due to the fact that we only asked to debug/fix at least 80% of errors. This was to reduce bias and not link success to completion. At the same time we provided an incentive to fix the majority of bugs.
* For some incorrect patches, we wrote **new test cases** that would fail because of the incorrectness.

## List of Errors w/Patches
You can click on the links below.
* [`find.07b941b1`](find.07b941b1)
* [`find.091557f6`](find.091557f6)
* [`find.183115d0`](find.183115d0)
* [`find.24bf33c0`](find.24bf33c0)
* [`find.24e2271e`](find.24e2271e)
* [`find.66c536bb`](find.66c536bb)
* [`find.6e4cecb6`](find.6e4cecb6)
* [`find.93623752`](find.93623752)
* [`find.b445af98`](find.b445af98)
* [`find.c8491c11`](find.c8491c11)
* [`find.dbcb10e9`](find.dbcb10e9)
* [`find.e1d0a991`](find.e1d0a991)
* [`find.e6680237`](find.e6680237)
* [`find.ff248a20`](find.ff248a20)
* [`grep.2be0c659`](grep.2be0c659)
* [`grep.3220317a`](grep.3220317a)
* [`grep.3c3bdace`](grep.3c3bdace)
* [`grep.54d55bba`](grep.54d55bba)
* [`grep.55cf7b6a`](grep.55cf7b6a)
* [`grep.58195fab`](grep.58195fab)
* [`grep.5fa8c7c9`](grep.5fa8c7c9)
* [`grep.7aa698d3`](grep.7aa698d3)
* [`grep.8f08d8e2`](grep.8f08d8e2)
* [`grep.9c45c193`](grep.9c45c193)
* [`grep.c1cb19fe`](grep.c1cb19fe)
* [`grep.c96b0f2c`](grep.c96b0f2c)
* [`grep.db9d6340`](grep.db9d6340)
