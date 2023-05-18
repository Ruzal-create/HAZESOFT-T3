#!/bin/bash

# Specifying backup directory
backup_directory="/home/ruzal/backup"

# Generate a timestamp for the backup filename
timestamp=$(date +"%Y%m%d")

# Backup filename
backup_filename="docker_backup_${timestamp}.tar.gz"

# Compress the directory
tar -czf "${backup_directory}/${backup_filename}" docker

# Check if the backup was successful
if [ $? -eq 0 ]; then
  echo "Backup created successfully: ${backup_filename}"
else
  echo "Backup creation failed"
fi
