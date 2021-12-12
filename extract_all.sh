#!/bin/bash

ARG1=${1:-extracted_data}

echo "ls *.tgz | xargs -n1 tar -C ${ARG1} -zxvf"