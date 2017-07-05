#!/bin/bash

set -e

rm -rf build.paho
mkdir build.paho
cd build.paho
echo "travis build dir $TRAVIS_BUILD_DIR pwd $PWD"
cmake ..
make
#python ../test/mqttsas2.py &
ctest -VV --timeout 600
#kill %1
killall mosquitto
