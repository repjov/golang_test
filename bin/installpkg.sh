#!/bin/bash

#this will work if run sh script from root folder in other case need to update ../config
source config

for i in "${pkgs[@]}"
do
   :
   # do whatever on $i
   docker exec -it $appname go get -u $i
done
