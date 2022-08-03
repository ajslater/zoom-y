#!/bin/bash
set -euxo pipefail
BASENAME=zoom-y
SRC=$BASENAME.applescript
DST=$BASENAME.scpt
osacompile -x -o $DST $SRC
