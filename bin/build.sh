#!/bin/bash

#this will work if run sh script from root folder in other case need to update ../config
source config

docker exec -it $appname sh -c "go install app && /go/bin/app"
