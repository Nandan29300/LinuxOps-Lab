#!/bin/bash
REPORT="reports/process-report-$(date +%Y-%m-%d).txt"

echo "===== Process Monitor Report =====" > $REPORT
echo "Date: $(date)" >> $REPORT
echo "" >> $REPORT

echo "--- Top 10 CPU Consuming Processes ---" >> $REPORT
ps aux --sort=-%cpu | head -11 >> $REPORT

echo "" >> $REPORT
echo "--- Memory Usage ---" >> $REPORT
free -h >> $REPORT

echo "" >> $REPORT
echo "--- Zombie Processes ---" >> $REPORT
ZOMBIES=$(ps aux | awk '$8=="Z"')
if [ -z "$ZOMBIES" ]; then
  echo "No zombie processes found ✅" >> $REPORT
else
  echo "$ZOMBIES" >> $REPORT
fi

echo "" >> $REPORT
echo "--- Disk Usage ---" >> $REPORT
df -h >> $REPORT

echo "✅ Report saved: $REPORT"
cat $REPORT
