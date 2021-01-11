#! /bin/bash

NMec=98324
I=1
d=$(printf "%06d" $NMec)
if [ -d $d ]; then
  d=$(printf "%06d" $NMec)
  rm -vf $(grep -L End $d/*)
fi
for T in {1..123}; do
    ./howManyP $NMec $T 
done