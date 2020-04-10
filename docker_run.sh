#!/bin/bash

VERSION="7.2"

docker run -e PUID=$(id -u) -e PGID=$(id -g) -v $(pwd):/app coder4/docker-centos-nuitka:$VERSION $@ 
