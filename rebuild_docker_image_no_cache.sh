#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
export BUILDKIT_PROGRESS=plain
export DOCKER_BUILDKIT=1

docker build --no-cache -t victor-birthday .
