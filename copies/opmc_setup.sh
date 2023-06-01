#!/bin/bash

# Step 1: Create On-Prem Database and Grant Privileges
sudo -i -u postgres psql -c "CREATE DATABASE wiseai_onprem_client;"
sudo -i -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE wiseai_onprem_client TO wiseai_admin;"

# Step 2: Download Schema and Data Files
# Note: Ensure that the "opmc_schema.sql" and "opmc_data.sql" files are in the same directory as this script.
# Modify the file paths accordingly if needed.

# Step 3: Setup Tables and Default Data for On-Prem Database
sudo -i -u postgres psql -U postgres -d wiseai_onprem_client -a -f /home/onprem/opmc_schema.sql
sudo -i -u postgres psql -U postgres -d wiseai_onprem_client -a -f /home/onprem/opmc_data.sql