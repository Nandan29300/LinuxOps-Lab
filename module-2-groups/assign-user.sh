#!/bin/bash
USERNAME=$1
GROUP=$2

if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run with sudo"
  exit 1
fi

usermod -aG $GROUP $USERNAME
echo "[$(date)] '$USERNAME' assigned to '$GROUP'" >> reports/user-actions.log
echo "✅ '$USERNAME' added to '$GROUP'"
