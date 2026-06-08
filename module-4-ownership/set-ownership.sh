#!/bin/bash
DIRECTORY=$1
OWNER=$2
GROUP=$3

chown -R $OWNER:$GROUP $DIRECTORY
echo "[$(date)] Ownership of $DIRECTORY set to $OWNER:$GROUP" >> reports/ownership-audit.log
echo "✅ Ownership updated"
