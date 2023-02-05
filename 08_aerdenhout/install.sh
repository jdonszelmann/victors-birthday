#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

YEAR="year8"
YEARPATH="archlive/airootfs/home/$YEAR"

cp -r $SCRIPT_DIR/READMEATOXFORD.md $YEARPATH
