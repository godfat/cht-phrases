#!/bin/sh

./bin/cleanup.rb
./bin/build.rb

export PYTHONPATH='/System/Library/Frameworks/Python.framework/Versions/2.6/Extras/lib/python/PyObjC'
cwd=`pwd`
McBopomofo=$HOME/project/fork/McBopomofo/Source

cd $McBopomofo/Data
git checkout 1-4w.occ BPMFMappings.txt

cd $cwd
cat ./build/1-4w.occ >> $McBopomofo/Data/1-4w.occ
cat ./build/BPMFMappings.txt >> $McBopomofo/Data/BPMFMappings.txt
./bin/cleanup.rb $McBopomofo/Data/1-4w.occ
./bin/cleanup.rb $McBopomofo/Data/BPMFMappings.txt

cd $McBopomofo
make install
