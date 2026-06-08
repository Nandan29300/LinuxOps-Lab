# User Management Runbook

## Add a New Employee
1. SSH into the server
2. Run: sudo bash users/create-user.sh <name> <department>
3. Verify: cat /etc/passwd | grep <name>
4. Check log: cat reports/user-actions.log

## Remove an Employee
1. Run: sudo bash users/delete-user.sh <name>
2. Verify: cat /etc/passwd | grep <name> (should be empty)

## Lock a User Temporarily
1. Run: sudo bash users/lock-user.sh <name>
2. To unlock: sudo bash users/unlock-user.sh <name>
