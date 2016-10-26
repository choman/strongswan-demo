#!/bin/bash

DOCKER_FILE=${1:-Dockerfile.rdp}

docker build -f $DOCKER_FILE -t crdp .
