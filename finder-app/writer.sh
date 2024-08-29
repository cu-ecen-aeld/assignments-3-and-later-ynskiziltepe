#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "error, please use two arguments"
    echo "Format: $0 <file> <str"
    exit 1
fi

file=$1
str=$2

pathdir=$(dirname "${file}")

if ! mkdir -p "${pathdir}"; then
    echo "error, directory path cant create: ${pathdir}."
    exit 1
fi

if ! echo "${str}" > "${file}"; then
    echo "error, file cant write: ${file}."
    exit 1
fi

echo "Successfully wroted ${file}"

exit 0
