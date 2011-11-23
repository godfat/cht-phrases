#!/bin/sh

./bin/cleanup.rb
./bin/build.rb

export PYTHONPATH='/System/Library/Frameworks/Python.framework/Versions/2.6/Extras/lib/python/PyObjC'
cwd=`pwd`
McBopomofo=$HOME/project/fork/McBopomofo/Source

cd $McBopomofo/Data
git checkout phrase.occ BPMFMappings.txt

cd $cwd
cat ./build/phrase.occ >> $McBopomofo/Data/phrase.occ
cat ./build/BPMFMappings.txt >> $McBopomofo/Data/BPMFMappings.txt
./bin/cleanup.rb $McBopomofo/Data/phrase.occ
./bin/cleanup.rb $McBopomofo/Data/BPMFMappings.txt

cd $McBopomofo
make install
