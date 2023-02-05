#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

YEAR="year10"
YEARPATH="archlive/airootfs/home/$YEAR"

cp $SCRIPT_DIR/README.md $YEARPATH
mkdir $YEARPATH/../../etc/.password/
cp $SCRIPT_DIR/password10.txt $YEARPATH/../../etc/.password/password10.txt


