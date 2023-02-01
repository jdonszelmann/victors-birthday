#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
export BUILDKIT_PROGRESS=plain
export DOCKER_BUILDKIT=1

python3 generate_shadow.py

docker build -t victor-birthday .
time docker run -it \
    -v $SCRIPT_DIR:/resources \
    --privileged \
    victor-birthday:latest \
    /resources/build_script_in_docker.sh
