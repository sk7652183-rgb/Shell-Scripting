#!/bin/bash

set -euo pipefail

LOG_FILE="/var/log/maintenance.log"

log_message() {
	echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"

}

main() {

	log_message "Maintenance job started."

	log_message "Running log rotation....."
	/home/sufiyan/DevOps/Scripts/log_rotate.sh /var/log >> "$LOG_FILE" 2>&1

	log_message "Running backup....."
	/home/sufiyan/DevOps/Scripts/backup.sh \
		/home/sufiyan/DevOps/Scripts \
		/home/sufiyan/DevOps/backups >> "$LOG_FILE" 2>&1

	log_message "Maintenance Job completed."



}

main
