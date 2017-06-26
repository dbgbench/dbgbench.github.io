#!/bin/bash
folder=$(dirname $(ls -1d ~/Desktop/grep*/grep.54d*))
CURRENT=$PWD
cd $folder/test > /dev/null
patch -p0 -l -f < $CURRENT/test.grep.54d55bba.patch >/dev/null