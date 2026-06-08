#!/bin/bash
USERNAME=$1
userdel -r $USERNAME
echo "[$(date)] User '$USERNAME' deleted" >> reports/user-actions.log
echo "✅ User '$USERNAME' deleted"
