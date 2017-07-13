#!/bin/bash

#this will work if run sh script from root folder in other case need to update ../config
source config

docker run -dit --rm --name $appname \
-p $port:$port \
-v $PWD/app:/go/src/app \
-v $PWD/build:/go/bin \
golang /bin/bash
