#!/bin/bash

for i in "$@"; do
  case $i in
    -s=*|--source=*)
      source="${i#*=}"
      shift # past argument=value
      ;;
    -d=*|--destination=*)
      destination="${i#*=}"
      shift # past argument=value
      ;;
    -h|--help)
    echo "Usage:"
    echo "./extract_all.sh --source=DIRECTORY_WITH_ARCHIVES --destination=DESTINATION_DIR_EXTRACTED_FILES"
    exit 0
  esac
done

source=${source:-archive}
destination=${destination:-extracted_data}

ls ${source}/*.tgz | xargs -n1 tar -C ${destination} -zxvf