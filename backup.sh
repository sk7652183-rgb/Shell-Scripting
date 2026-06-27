#!/bin/bash

set -euo pipefail

# Check arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_directory> <backup_destination>"
    exit 1
fi

SOURCE_DIR="$1"
BACKUP_DIR="$2"

# Verify source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' does not exist."
    exit 1
fi

# Verify backup destination exists
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Error: Backup destination '$BACKUP_DIR' does not exist."
    exit 1
fi

# Create timestamped archive name
TIMESTAMP=$(date +%F_%H-%M-%S)
ARCHIVE_NAME="backup-${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="${BACKUP_DIR}/${ARCHIVE_NAME}"

# Create archive
tar -czf "$ARCHIVE_PATH" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"

# Verify archive was created
if [ ! -f "$ARCHIVE_PATH" ]; then
    echo "Error: Failed to create archive."
    exit 1
fi

# Get archive size
ARCHIVE_SIZE=$(du -h "$ARCHIVE_PATH" | cut -f1)

echo "Backup created successfully."
echo "Archive: $ARCHIVE_NAME"
echo "Size: $ARCHIVE_SIZE"

# Delete backups older than 14 days
find "$BACKUP_DIR" -type f -name "backup-*.tar.gz" -mtime +14 -delete

echo "Old backups older than 14 days have been removed."


