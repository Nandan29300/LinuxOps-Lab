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
├── module-1-users/
├── module-2-groups/
├── module-3-permissions/
├── module-4-ownership/
├── module-5-monitoring/
├── module-6-runbooks/
├── reports/
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

### Setup
- git clone https://github.com/Nandan29300/LinuxOps-Lab.git
- cd LinuxOps-Lab
- mkdir -p reports

### Module 1 — User Management
sudo bash module-1-users/create-user.sh john developers
sudo bash module-1-users/create-user.sh sarah hr
sudo bash module-1-users/create-user.sh ram finance
sudo bash module-1-users/lock-user.sh sarah
sudo bash module-1-users/unlock-user.sh sarah
sudo bash module-1-users/delete-user.sh ram

### Module 2 — Group Management
sudo bash module-2-groups/create-group.sh devops
sudo bash module-2-groups/assign-user.sh john devops

### Module 3 — Permissions
bash module-3-permissions/grant-access.sh
bash module-3-permissions/revoke-access.sh company/finance

### Module 4 — Ownership
bash module-4-ownership/audit-ownership.sh
bash module-4-ownership/set-ownership.sh company/hr $USER $USER

### Module 5 — Monitoring
bash module-5-monitoring/process-monitor.sh

### Verify all reports generated
cat reports/user-actions.log
cat reports/permission-audit.log
cat reports/ownership-audit.log
cat reports/process-report-$(date +%Y-%m-%d).txt

---

## 📚 Concepts Covered
- Linux user and group management
- File permissions with chmod
- File ownership with chown
- Process monitoring with ps, top
- File I/O and log generation
- Runbook documentation

