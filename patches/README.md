# Using Participant Patches

```
$ cd ~/Desktop/[Error ID]/find
$ patch -p1 -l -f < [Error ID]/[Participant ID].patch
```
to apply the patch of participant [Participant ID] for error [Error ID].

## Example: Dry-run-apply All Patches

```
cd ~/Desktop
git config --global http.sslVerify false
git clone https://github.com/dbgbench/dbgbench.github.io.git

for id in $(ls -1d ~/Desktop/find*/find.*); do
  pushd $(echo $id | rev | cut -d/ -f2- | rev)/find 2>/dev/null
  error=$(echo $id | rev | cut -d/ -f1 | rev)
  for patch in $(ls -1d ~/Desktop/dbgbench.github.io/patches/$error/*.patch); do 
    echo Checking whether we can apply $patch to $error ($(echo $id | rev | cut -d/ -f2- | rev))
    patch -l -p1 --dry-run -f < $patch
  done
  popd 2>/dev/null
done
```
