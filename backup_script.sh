#!/bin/bash

# Define the source and destination (use Windows-style paths)
SOURCE="/c/Users/joshr/Documents"
DESTINATION="/c/Users/joshr/Backups"

# Check if the destination directory exists, create if it doesn't
if [ ! -d "$DESTINATION" ]; then
  mkdir -p "$DESTINATION"
fi

# Create a backup
tar -czvf "$DESTINATION/backup_$(date +"%Y%m%d%H%M").tar.gz" "$SOURCE"

echo "Backup completed."
