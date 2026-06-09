#!/bin/bash
USERNAME=$1

if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run with sudo"
  exit 1
fi

passwd -l $USERNAME
echo "[$(date)] User '$USERNAME' locked" >> reports/user-actions.log
echo "🔒 User '$USERNAME' locked"
