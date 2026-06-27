#!/bin/bash

<<comment

# In the script, the variable Username is referenced before being assigned a value.
set -eu

echo "Username : $Username"

# Try a command that fails — what happens with set -e ?

set -e
mkdir -p project
cd project

cp config.txt backup/
echo "Deployment completed"

comment

# Try a piped command where one part fails — what happens with set -o pipefail?
set -e
set -o pipefail

grep "admin" users.txt | sort

echo "This line will not execute"

