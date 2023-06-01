#!/bin/bash

# Step 1: Create Wise Console Database and Grant Privileges
sudo -i -u postgres psql -c "CREATE DATABASE wiseai_console;"
sudo -i -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE wiseai_console TO wiseai_admin;"

# Step 2: Download Schema and Data Files
# Note: Ensure that the required SQL files are in the same directory as this script.
# Modify the file paths accordingly if needed.

# Step 3: Setup Tables and Default Data for Wise Console Database
sudo -i -u postgres psql -U postgres -d wiseai_console -a -f /home/onprem/wiseai_console_schema.sql
sudo -i -u postgres psql -U postgres -d wiseai_console -a -f /home/onprem/wiseai_console_data.sql
sudo -i -u postgres psql -U postgres -d wiseai_console -a -f /home/onprem/wiseai_console_be_mu_data.sql
sudo -i -u postgres psql -U postgres -d wiseai_console -a -f /home/onprem/wiseai_console_api_token_data.sql
sudo -i -u postgres psql -U postgres -d wiseai_console -a -f /home/onprem/wiseai_console_api_token_setting_version.sql
