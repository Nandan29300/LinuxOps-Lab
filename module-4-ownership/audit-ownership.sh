#!/bin/bash
DIRECTORY=${1:-/opt/company}

echo "===== Ownership Audit: $DIRECTORY =====" | tee reports/ownership-audit.log
echo "Date: $(date)" | tee -a reports/ownership-audit.log
echo "" | tee -a reports/ownership-audit.log

find $DIRECTORY -type f | while read file; do
  OWNER=$(stat -c '%U' "$file")
  GROUP=$(stat -c '%G' "$file")
  PERMS=$(stat -c '%A' "$file")
  echo "$PERMS  $OWNER:$GROUP  $file" | tee -a reports/ownership-audit.log
done

echo "" 
echo "✅ Audit saved to reports/ownership-audit.log"
