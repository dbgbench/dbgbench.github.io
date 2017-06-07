# Using Participant Patches

```
$ cd ~/Desktop/[Error ID]/find
$ patch -p1 -l -f < [Error ID]/[Participant ID].patch
```
to apply the patch of participant [Participant ID] for error [Error ID].

## Example 1: Dry-run-apply All Patches

```
cd ~/Desktop
git config --global http.sslVerify false
git clone https://github.com/dbgbench/dbgbench.github.io.git

for id in $(ls -1d ~/Desktop/find*/find.*); do
  pushd $(echo $id | rev | cut -d/ -f2- | rev)/find > /dev/null
  error=$(echo $id | rev | cut -d/ -f1 | rev)
  for patch in $(ls -1d ~/Desktop/dbgbench.github.io/patches/$error/*.patch); do 
    patch -l -p1 --dry-run -f < $patch > /dev/null
    if [ $? -eq 0 ]; then
      printf "[v]\tCan"
    else
      printf "[x]\tCannot"
    fi
    echo " apply $(echo $patch | rev | cut -d/ -f1 | rev | cut -d. -f1)'s patch to $error ($(echo $id | rev | cut -d/ -f2 | rev))"
  done
  popd > /dev/null
done
```

## Example 2: Check Patch Plausibility
```
cd ~/Desktop
git config --global http.sslVerify false
git clone https://github.com/dbgbench/dbgbench.github.io.git

for id in $(ls -1d ~/Desktop/find*/find.*); do
  pushd $(echo $id | rev | cut -d/ -f2- | rev)/find > /dev/null
  error=$(echo $id | rev | cut -d/ -f1 | rev)
  for patch in $(ls -1d ~/Desktop/dbgbench.github.io/patches/$error/*.patch); do 
    patch -l -p1 -f < $patch > /dev/null
    if [ $? -ne 0 ]; then
      echo "[?] Cannot apply $(echo $patch | rev | cut -d/ -f1 | rev | cut -d. -f1)'s patch to $error ($(echo $id | rev | cut -d/ -f2 | rev))."
      patch -R -l -p1 -f < $patch > /dev/null
      continue;
    fi
    make > log.$error.txt 2>&1
    if [ $? -ne 0 ]; then
      echo "[?] Cannot build $error. More info: log.$error.txt"
      continue;
    fi
    ../test/test.sh $PWD > /dev/null 2>&1
    if [ $? -eq 0 ]; then
      printf "[v] Plausible patch"
    else
      printf "[x] Implausible patch"
    fi
    patch -R -l -p1 -f < $patch > /dev/null
    echo " from $(echo $patch | rev | cut -d/ -f1 | rev | cut -d. -f1) for $error ($(echo $id | rev | cut -d/ -f2 | rev))"
  done
  popd > /dev/null
done
```

