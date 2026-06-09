#!/bin/bash
FOLDER=$1

if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run with sudo"
  exit 1
fi

chmod -R 000 $FOLDER
echo "[$(date)] Access revoked on $FOLDER" >> reports/permission-audit.log
echo "🚫 Access revoked on $FOLDER"
