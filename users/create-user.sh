#!/bin/bash
# create-user.sh — Creates a new user and adds to a group

USERNAME=$1
GROUP=$2

if [ -z "$USERNAME" ] || [ -z "$GROUP" ]; then
  echo "Usage: sudo bash create-user.sh <username> <group>"
  exit 1
fi

# Create group if it doesn't exist
groupadd -f $GROUP

# Create user and add to group
useradd -m -G $GROUP -s /bin/bash $USERNAME

# Set default password same as username
echo "$USERNAME:$USERNAME@123" | chpasswd

# Log the action
echo "[$(date)] User '$USERNAME' created and added to group '$GROUP'" >> reports/user-actions.log

echo "✅ User '$USERNAME' created and added to group '$GROUP'"
