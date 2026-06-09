#!/bin/bash
USERNAME=$1
GROUP=$2

if [ -z "$USERNAME" ] || [ -z "$GROUP" ]; then
  echo "Usage: sudo bash create-user.sh <username> <group>"
  exit 1
fi

if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run with sudo"
  exit 1
fi

groupadd -f $GROUP
useradd -m -G $GROUP -s /bin/bash $USERNAME
echo "$USERNAME:$USERNAME@123" | chpasswd
echo "[$(date)] User '$USERNAME' created and added to group '$GROUP'" >> reports/user-actions.log
echo "✅ User '$USERNAME' created and added to group '$GROUP'"
