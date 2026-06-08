#!/bin/bash
USERNAME=$1
GROUP=$2
usermod -aG $GROUP $USERNAME
echo "[$(date)] '$USERNAME' assigned to '$GROUP'" >> reports/user-actions.log
echo "✅ '$USERNAME' added to '$GROUP'"
