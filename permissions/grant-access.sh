#!/bin/bash

chown -R $USER:$USER company/hr
chmod -R 750 company/hr

chown -R $USER:$USER company/developers
chmod -R 770 company/developers

chown -R $USER:$USER company/finance
chmod -R 700 company/finance

echo "[$(date)] Permissions applied for all departments" >> reports/permission-audit.log
echo "✅ Department permissions set"
