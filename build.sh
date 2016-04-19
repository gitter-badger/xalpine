#!/bin/bash
iif [ $# -ne 1 ]; then
	echo "Require Tag/Folder/Name" 1>&2
	exit 1
fi

docker build --rm -t ymst180/xalpine:$1 ./$1/
