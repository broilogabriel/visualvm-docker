#!/usr/bin/env bash

docker rmi visualdocker

docker build -t visualdocker .

docker run -it --rm --name visualdocker -p 9010:9010 visualdocker