#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

YEAR="year9"
YEARPATH="archlive/airootfs/home/$YEAR"

cp -r $SCRIPT_DIR/project $YEARPATH/rusttracer
mkdir $YEARPATH/.cargo
cp $SCRIPT_DIR/config.toml $YEARPATH/.cargo/config.toml
