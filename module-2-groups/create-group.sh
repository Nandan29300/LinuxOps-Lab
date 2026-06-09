#!/bin/bash
GROUPNAME=$1

if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run with sudo"
  exit 1
fi

groupadd $GROUPNAME
echo "[$(date)] Group '$GROUPNAME' created" >> reports/user-actions.log
echo "✅ Group '$GROUPNAME' created"
