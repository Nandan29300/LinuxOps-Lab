#!/bin/bash
USERNAME=$1
passwd -l $USERNAME
echo "[$(date)] User '$USERNAME' locked" >> reports/user-actions.log
echo "🔒 User '$USERNAME' locked"
