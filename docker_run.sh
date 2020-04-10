#!/bin/bash

docker run -e PUID=$(id -u) -e PGID=$(id -g) -v $(pwd):/app b4b63f45727a $@ 
