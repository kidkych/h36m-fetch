#!/bin/bash

ARG1=${1:-archive}
ARG2=${2:-extracted_data}

echo "ls ${ARG1}/*.tgz | xargs -n1 tar -C ${ARG2} -zxvf"