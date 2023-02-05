#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

YEAR="year1"
YEARPATH="archlive/airootfs/home/$YEAR"

cp $SCRIPT_DIR/* $YEARPATH
rm $YEARPATH/install.sh


