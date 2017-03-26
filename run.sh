#!/bin/bash
list=($(ls scripts | sort))
for i in "${list[@]}"
do
  ./scripts/$i
done
