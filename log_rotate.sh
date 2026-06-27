#!/bin/bash


set -euo pipefail

# Check if directory argument is provided 

if [ $# -ne 1 ]; then
	echo "Usage : $0 <log_directory>"
	exit 1
fi

LOG_DIR="$1"

#Check if the directory exists

if [ ! -d "$LOG_DIR" ]; then
	echo "Error: Directory '$LOG_DIR' does not exist."
	exit 1
fi

#Count the log files older than 7 days

compressed_count=$(find "$LOG_DIR" -type f -name "*.log" -mtime +7 | wc -l)

#Compress .log files older than 7 days

find "$LOG_DIR" -type f -name "*.log" -mtime +7 -exec gzip {} \;

#Count the old .gz files older than 30 days 

deleted_count=$(find "$LOG_DIR" -type f -name "*.gz" -mtime +30 | wc -l)

#Delete .gz files older than 30 days

find "$LOG_DIR" -type f -name "*.gz" -mtime +30 -delete

echo "Compressed files: $compressed_count"
echo "Deleted files: $deleted_count"



