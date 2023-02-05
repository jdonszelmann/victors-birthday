#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

YEAR="year4"
YEARPATH="archlive/airootfs/home/$YEAR"

cp -r $SCRIPT_DIR/project $YEARPATH/rusttracer


