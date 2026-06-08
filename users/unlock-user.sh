#!/bin/bash
USERNAME=$1
passwd -u $USERNAME
echo "[$(date)] User '$USERNAME' unlocked" >> reports/user-actions.log
echo "🔓 User '$USERNAME' unlocked"
