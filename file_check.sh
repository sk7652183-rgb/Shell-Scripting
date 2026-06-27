#!/bin/bash

read -p "Enter the file path: " filepath

if [ -f $filepath ]; then
	echo "File exists"
else 
	echo "file doesn't exits"

fi

