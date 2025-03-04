#!/bin/bash

# This script is used to archive the log files from the log directory to the archive directory.
# The script will create a tarball of the log files and move it to the archive directory.

tar -f "logs_archive_$(date +'%Y%m%d')_$(date +'%H%M%S').tar.gz" -c "$0"/*.log