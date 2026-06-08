#!/bin/bash
GROUPNAME=$1
groupadd $GROUPNAME
echo "[$(date)] Group '$GROUPNAME' created" >> reports/user-actions.log
echo "✅ Group '$GROUPNAME' created"
