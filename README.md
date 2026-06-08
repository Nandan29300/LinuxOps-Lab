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

### Clone the repo
- git clone https://github.com/YOURNAME/linuxops-lab
- cd linuxops-lab

### Create a user
- sudo bash module-1-users/create-user.sh john developers

### Set department permissions
- bash module-3-permissions/grant-access.sh

### Run health report
- bash monitoring/process-monitor.sh

### Audit file ownership
- bash module-4-ownership/audit-ownership.sh

---

## 📚 Concepts Covered
- Linux user and group management
- File permissions with chmod
- File ownership with chown
- Process monitoring with ps, top
- File I/O and log generation
- Runbook documentation

