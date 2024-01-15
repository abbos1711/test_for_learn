#!/bin/bash

# PostgreSQL database details
#username="your_username"
username="tizim_user"
#database="your_database"
database="tizim_backend"

backup_file="backupp-test.sql"

# Perform the backup
pg_dump -U "$username" -d "$database" -f "$backup_file"

#Replace `"your_username"` with your PostgreSQL username, `"your_database"` with the name of the database you want to back up, and `"backup.sql"`
# with the desired filename for the backup file.
# in the end  must enter db password
