#!/bin/bash

# Check arg
if [ "$#" -ne 1 ]
then
  echo "Usage: ./run.sh VERSION-NUM"
  echo "VERSION like '0.0.1' or '0.3.2' etc"
  exit 1
fi

# Get VERSION
V=$(echo $1 | awk -F- '{print $1}')

# Run the container
docker run \
	-d \
	-e VIRTUAL_PORT=8080 \
	-e VIRTUAL_HOST=localhost \
	java-app-$V:latest
