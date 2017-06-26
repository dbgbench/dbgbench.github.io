#!/bin/bash
folder=$(dirname $(ls -1d ~/Desktop/find*/find.66c*))
CURRENT=$PWD
cd $folder/test > /dev/null
patch -p0 -l -f < $CURRENT/test.find.66c536bb.patch >/dev/null
