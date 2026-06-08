# LinuxOps Lab — Enterprise Linux Server Simulator

### 📌 Problem Statement
Companies manually manage Linux users, permissions, and ownership on servers.
One wrong chmod or missing chown causes security breaches.
This project automates and simulates real enterprise Linux server administration.

---

### 🛠️ Tech Stack
- OS: Ubuntu Linux
- Language: Bash
- Tools: useradd, chmod, chown, ps, df, free
- Version Control: Git + GitHub

---

### 📁 Project Structure

```text
linuxops-lab
├── users/
├── groups/
├── permissions/
├── ownership/
├── monitoring/
├── reports/
└── runbooks/
```

| Directory | Purpose |
|------------|---------|
| `users/` | Create, delete, lock, and unlock users |
| `groups/` | Create groups and assign users |
| `permissions/` | Grant and revoke department access |
| `ownership/` | Audit and enforce file ownership |
| `monitoring/` | Generate process, disk, and memory reports |
| `reports/` | Auto-generated logs (git ignored) |
| `runbooks/` | Documentation for common tasks |

---

## 🚀 How to Run:

### Clone the repo
git clone https://github.com/YOURNAME/linuxops-lab
cd linuxops-lab

### Create a user
sudo bash users/create-user.sh john developers

### Set department permissions
sudo bash permissions/grant-access.sh

### Run health report
bash monitoring/process-monitor.sh

### Audit file ownership
sudo bash ownership/audit-ownership.sh /opt/company

---

## 📸 Screenshots
[paste your terminal output screenshots here]

## 📚 Concepts Covered
- Linux user and group management (Day 9)
- File permissions with chmod (Day 10)
- File ownership with chown (Day 11)
- Process monitoring with ps, top (Day 2)
- File I/O and log generation (Day 6)
- Runbook documentation (Day 5)

