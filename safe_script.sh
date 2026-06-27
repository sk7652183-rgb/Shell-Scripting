#!/bin/bash

set -e

mkdir -p /tmp/devops-test || echo "Failed to create directory"

cd /tmp/devops-test || echo "Failed to change directory"

touch testing_purpose_2 || echo "Failed to create file"
