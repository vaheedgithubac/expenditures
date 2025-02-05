#!/usr/bin/env bash

# Capture the arguments passed to the script
mysql_temp_password="$1"
mysql_root_password="$2"

# Print the received arguments for debugging (optional)
echo "Temp Password: $mysql_temp_password"
echo "New Root Password: $mysql_root_password"

# Use mysql command to change the root password
mysql --user=root --password="$mysql_temp_password" --connect-expired-password \
  --execute="ALTER USER 'root'@'localhost' IDENTIFIED BY '$mysql_root_password';"

# Check if the password change was successful (optional)
if [ $? -eq 0 ]; then
  echo "Mysql ROOT Password successfully changed."
else
  echo "Failed to change Mysql ROOT password."
fi
