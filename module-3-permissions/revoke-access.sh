#!/bin/bash
FOLDER=$1
chmod -R 000 $FOLDER
echo "[$(date)] Access revoked on $FOLDER" >> reports/permission-audit.log
echo "🚫 Access revoked on $FOLDER"
