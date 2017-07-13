#!/bin/bash

#this will work if run sh script from root folder in other case need to update ../config
source config

docker stop $appname
