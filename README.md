# Open Source Audit — Git
**Course:** Open Source Software | VITyarthi  
**Student:** Nihal Vats | `24BCE10837`  
**Software Audited:** Git — GNU General Public License v2  
**Submission:** March 2026

---

## About This Project

This repository is the complete submission for the Open Source Audit capstone project for the OSS NGMC course at VIT Bhopal.

The project audits **Git** — one of the most widely used open-source tools in the world. The written report covers Git's origin story, its GPL v2 license and what it actually means, ethical questions around open-source software, how Git lives on a Linux system, the ecosystem it has created, and an honest comparison against proprietary alternatives like Perforce Helix Core and Microsoft TFVC.

Five shell scripts are included alongside the report, each demonstrating practical Linux command-line skills connected to the course units.

---

## Why Git?

Git was created by Linus Torvalds in April 2005 after the Linux kernel project lost access to BitKeeper — a proprietary version control tool. Torvalds wrote the first working version in roughly ten days. He open-sourced it under GPL v2 so that no company could ever take it away from the community again.

Today Git is used by essentially every software developer in the world. GitHub, GitLab, and most modern CI/CD pipelines are built entirely on top of it.

| | |
|---|---|
| Created by | Linus Torvalds, April 2005 |
| Current Maintainer | Junio C Hamano |
| License | GNU General Public License v2 (GPL-2.0) |
| Source Code | github.com/git/git |
| Official Site | git-scm.com |

---

## Repository Structure

```
oss-audit-24BCE10837/
│
├── README.md
├── script1.sh        ← System Identity Report
├── script2.sh        ← FOSS Package Inspector
├── script3.sh        ← Disk and Permission Auditor
├── script4.sh        ← Log File Analyzer
└── script5.sh        ← Open Source Manifesto Generator
```

---

## Shell Scripts

| Script | What It Does | Key Concepts |
| `script1.sh` | Displays OS, kernel, user, uptime, date | Variables, command substitution, echo |
| `script2.sh` | Checks if Git is installed, prints package info and a philosophy note | if-else, case statement, dpkg, grep |
| `script3.sh` | Loops through system directories and reports permissions and disk usage | for loop, arrays, awk, du |
| `script4.sh` | Reads a log file, counts keyword matches, shows last 5 hits | while read loop, arguments, grep, tail |
| `script5.sh` | Asks 3 questions and saves a personalised manifesto to a .txt file | read -p, file redirection, string building |

---

## How to Run

**Step 1 — make all scripts executable:**
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

**Step 2 — run each one:**
```bash
bash script1.sh

bash script2.sh

bash script3.sh

bash script4.sh /var/log/dpkg.log install

bash script5.sh
# Script 5 is interactive — it will ask you 3 questions
```

> All scripts were written and tested on Ubuntu 24.04 LTS running inside WSL2 on Windows 11.

---

## Dependencies

All tools used are pre-installed on Ubuntu by default. No additional installations needed except Git itself.

```bash
sudo apt install git
```

---

*Submitted for the Open Source Software (CSE0002) course — VIT Bhopal University, 2026*
