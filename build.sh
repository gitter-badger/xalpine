#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Require BuildTagName"
	exit 1
fi
docker build --rm -t ymst180/xalpine$1 ./$1/
