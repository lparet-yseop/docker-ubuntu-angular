#!/bin/bash
set -e

source version.sh

echo "Execute : docker build -t ${REGISTRY}/${IMAGE} . "
docker build -t ${REGISTRY}/${IMAGE} .