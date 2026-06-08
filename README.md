# LinuxOps Lab — Enterprise Linux Server Simulator

## 📌 Problem Statement
Companies manually manage Linux users, permissions, and ownership on servers.
One wrong chmod or missing chown causes security breaches.
This project automates and simulates real enterprise Linux server administration.

## 🛠️ Tech Stack
- OS: Ubuntu Linux
- Language: Bash
- Tools: useradd, chmod, chown, ps, df, free
- Version Control: Git + GitHub

## 📁 Project Structure
linuxops-lab/
├── users/          → create, delete, lock, unlock users
├── groups/         → create groups, assign users
├── permissions/    → grant and revoke department access
├── ownership/      → audit and enforce file ownership
├── monitoring/     → process + disk + memory reports
├── reports/        → auto-generated logs (git ignored)
└── runbooks/       → documentation for common tasks

## 🚀 How to Run
# Clone the repo
git clone https://github.com/YOURNAME/linuxops-lab
cd linuxops-lab

# Create a user
sudo bash users/create-user.sh john developers

# Set department permissions
sudo bash permissions/grant-access.sh

# Run health report
bash monitoring/process-monitor.sh

# Audit file ownership
sudo bash ownership/audit-ownership.sh /opt/company

## 📸 Screenshots
[paste your terminal output screenshots here]

## 📚 Concepts Covered
- Linux user and group management (Day 9)
- File permissions with chmod (Day 10)
- File ownership with chown (Day 11)
- Process monitoring with ps, top (Day 2)
- File I/O and log generation (Day 6)
- Runbook documentation (Day 5)

## 🔗 Part of #90DaysOfDevOps by @TrainWithShubham
