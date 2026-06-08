# Troubleshooting Runbook

## Permission Denied Error
- Check if you ran the script with sudo
- Run: ls -l scripts/ to verify execute permission
- Fix: chmod +x script.sh

## User Already Exists
- Error: "useradd: user already exists"
- Check: cat /etc/passwd | grep <username>
- Fix: delete first then recreate
  sudo bash module-1-users/delete-user.sh <name>

## Group Not Found
- Error: "groupadd: group already exists"
- Check: cat /etc/group | grep <groupname>
- Safe to ignore — groupadd -f handles this automatically

## Script Not Found
- Check you are inside linuxops-lab/ directory
- Run: pwd (should show .../linuxops-lab)

## Report Not Generated
- Check reports/ folder exists: ls reports/
- Fix: mkdir -p reports/

## chown Not Working
- Make sure you own the directory
- Run: ls -la company/ to check current ownership
- Fix: run set-ownership.sh with your own username
