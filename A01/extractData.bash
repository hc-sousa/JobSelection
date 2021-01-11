#! /bin/bash

dir=$1
file=data$dir.txt
if [ -e $file ]; then
  rm $file
fi
touch $file
for jobSeletion in $(ls $dir); do
    T=$( grep '^T' $dir/$jobSeletion | tr -dc '0-9' )
    P=$( grep '^P' $dir/$jobSeletion | tr -dc '0-9' )
    solutionTime=$( grep "Solution time =" $dir/$jobSeletion| cut -d ' ' -f '4-' )
    printf "%d \t %d \t %s \n" "$T" "$P" "$solutionTime" >> $file
done