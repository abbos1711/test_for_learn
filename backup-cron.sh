#!/bin/bash

# PostgreSQL database details
username="your_username"
database="your_database"
backup_file="backup_$(date +'%Y%m%d_%H%M%S').sql"
target_hour=17  # Target hour for backup (5 PM)

while true; do
  current_hour=$(date +'%H')

  if [[ $current_hour -eq $target_hour ]]; then
    # Perform the backup
    pg_dump -U "$username" -d "$database" -f "$backup_file"
    break  # Exit the loop after backup is completed
  fi

  sleep 3600  # Sleep for 1 hour (3600 seconds) before checking the time again
done

#chmod +x scheduled_backup.sh
#./scheduled_backup.sh
#crontab -e
#0 17 * * * /path/to/scheduled_backup.sh
# save and exit
