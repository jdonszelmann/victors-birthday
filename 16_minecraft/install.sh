#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

YEAR="year16"
YEARPATH="archlive/airootfs/home/$YEAR"

cp -r $SCRIPT_DIR/server $YEARPATH
cp $SCRIPT_DIR/start.sh $YEARPATH


