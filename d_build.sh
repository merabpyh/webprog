#!/bin/bash

# Check arg
if [ "$#" -ne 1 ]
then
  echo "Usage: ./run.sh VER"
  echo "VER like '0.0.1' or '0.3.2' etc"
  exit 1
fi

# Get VERSION
V=$(echo $1)

docker build -t java-app:latest -t java-app:$V .
