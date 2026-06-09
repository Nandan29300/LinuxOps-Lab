#!/bin/bash
USERNAME=$1

if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run with sudo"
  exit 1
fi

userdel -r $USERNAME 2>/dev/null
echo "[$(date)] User '$USERNAME' deleted" >> reports/user-actions.log
echo "✅ User '$USERNAME' deleted"
