#!/bin/bash

# This script is optional and installs Statamic to the script's directory.

CUR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Begin new git project
rm -rf $CUR_DIR/.git
git init

# Start new statamic project
docker run --rm -v $CUR_DIR:/app composer create-project statamic/statamic statamic --prefer-dist --stability=dev
