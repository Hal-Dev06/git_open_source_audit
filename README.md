# The Open Source Audit — Git

**Course:** Open Source Software (CSE0002) | VITyarthi  
**Student:** Nihal Vats | `24BCE10837`  
**Program:** B.Tech Computer Science | Semester V  
**Software Audited:** Git — GNU General Public License v2  
**Institution:** VIT Bhopal University  
**Submission:** March 2026  

---

## About This Project

This repository is the complete submission for the Open Source Audit capstone project, part of the OSS NGMC course at VIT Bhopal University.

The goal of this project is to pick one real open-source software project and audit it properly — not just describe what it does, but dig into why it was created, what its license actually means, what philosophical values it represents, how it lives on a Linux system, and how it compares honestly against proprietary alternatives.

The software chosen for this audit is **Git** — the version control system used by nearly every software developer in the world. Git is an interesting choice because its origin story is directly tied to the open-source philosophy itself. It was not built by a company with a product plan. It was built by one person in ten days because a proprietary tool failed the open-source community, and he refused to let that happen again.

The repository contains a full written report and five shell scripts that demonstrate practical Linux command-line skills tied to the course units.

---

## Why Git?

In 2005, the Linux kernel project was using a proprietary version control tool called BitKeeper. A developer in the community tried to reverse-engineer its protocol, BitMover (the company behind it) found out, and they immediately revoked free access. Overnight, one of the most important open-source projects in the world had no version control system.

Linus Torvalds looked at the existing open-source alternatives — CVS, Subversion, Monotone — and found all of them inadequate. They were too slow, too centralised, or not built for the scale of the Linux kernel. So he built his own.

In roughly ten days in April 2005, Torvalds wrote the first working version of Git. He released it under GPL v2 — the same license as Linux — specifically so that no company could ever take it away from the community the way BitKeeper had been. The tool that manages open-source code should itself be open-source. That principle is what Git is built on.

Today Git is used by essentially every software developer on the planet. GitHub, GitLab, Bitbucket, and most modern CI/CD pipelines are built entirely on top of it.

| Field | Detail |
|---|---|
| Created by | Linus Torvalds |
| Year Created | April 2005 |
| Current Maintainer | Junio C Hamano (employed by Google) |
| License | GNU General Public License v2 (GPL-2.0) |
| License Type | Copyleft — derivatives must stay open source |
| Source Code | github.com/git/git |
| Official Site | git-scm.com |
| Written In | C, Perl, Shell |

---

## Repository Structure

```
oss-audit-24BCE10837/
│
├── README.md                  ← You are here
│
├── script1.sh                 ← System Identity Report
├── script2.sh                 ← FOSS Package Inspector
├── script3.sh                 ← Disk and Permission Auditor
├── script4.sh                 ← Log File Analyzer
└── script5.sh                 ← Open Source Manifesto Generator
```

The written report PDF is submitted separately on the VITyarthi portal as per the submission requirements.

---

## Report Structure

The written report covers the following sections:

**Part A — Origin and Philosophy**
- A1: The problem Git was created to solve — the BitKeeper incident, Torvalds's design goals, and why he chose to open-source it
- A2: License analysis — what GPL v2 actually says, the four freedoms, GPL vs MIT comparison, free as in beer vs free as in freedom
- A3: Ethics of open source — should all software be open source, is it ethical to profit from community labour, standing on the shoulders of giants

**Part B — Linux Footprint**
- Installation method on Ubuntu via APT
- Key directories — /usr/bin/git, ~/.gitconfig, .git/, /etc/gitconfig
- User and group model
- Service management
- How security patches reach users through the package update cycle

**Part C — The FOSS Ecosystem**
- What Git depends on (zlib, OpenSSL, libcurl, Perl)
- What Git has enabled (GitHub, GitLab, CI/CD pipelines, Infrastructure as Code)
- Git's place in the LAMP stack
- Community and governance — the mailing list model, Junio C Hamano, benevolent maintainer model

**Part D — Open Source vs Proprietary**
- Comparison table against Perforce Helix Core and Microsoft TFVC
- When proprietary alternatives might be the better choice
- Overall verdict and whether I would contribute to Git

**Shell Scripts**
- All five scripts with code, screenshots, and explanations of concepts used

---

## Shell Scripts

### Script 1 — System Identity Report (`script1.sh`)

Displays a formatted welcome screen showing key information about the current Linux system — the distribution name, kernel version, logged-in user, home directory, uptime, and current date and time. Also prints the open-source license of the OS and the audited software.

**Shell concepts demonstrated:** variables, command substitution with `$()`, echo with formatted output, sourcing `/etc/os-release` with `.`, uname, whoami, date formatting.

---

### Script 2 — FOSS Package Inspector (`script2.sh`)

Checks whether Git is installed on the system, retrieves version and package metadata, and uses a case statement to print a short philosophy note about the package. Detects whether the system uses RPM or dpkg so it works on both Debian and Red Hat based systems.

**Shell concepts demonstrated:** if-then-else, case statement, command -v, dpkg and rpm, pipe with grep, exit codes via `$?`.

---

### Script 3 — Disk and Permission Auditor (`script3.sh`)

Loops through a list of important system directories using a for loop and reports the permissions, owner, group, and disk usage of each. Also checks specifically for the Git configuration file and prints its permissions.

**Shell concepts demonstrated:** arrays, for loop with `${DIRS[@]}`, `[ -d ]` and `[ -f ]` file tests, ls -ld, awk for field extraction, du -sh, cut -f1, printf for formatted output.

---

### Script 4 — Log File Analyzer (`script4.sh`)

Reads a log file line by line using a while read loop, counts how many lines contain a given keyword, and prints the last five matching lines. The log file path and keyword are passed as command-line arguments. Defaults to searching for the word 'error' if no keyword is provided.

**Shell concepts demonstrated:** `$1` and `$2` positional arguments, `${2:-default}` default values, `-z` `-f` `-s` file tests, while IFS= read -r loop, grep -iq, arithmetic expansion with `$(())`, tail -5.

---

### Script 5 — Open Source Manifesto Generator (`script5.sh`)

Asks the user three questions interactively and builds a personalised open-source philosophy statement from their answers. Saves the result to a text file named after the current user. Demonstrates interactive input, string building with variables, and file redirection.

**Shell concepts demonstrated:** read -p for interactive input, string building with variables, `>` to create a file, `>>` to append without overwriting, date command, whoami, cat to display the file.

---

## How to Run

**Step 1 — make all scripts executable:**
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

**Step 2 — run Script 1:**
```bash
bash script1.sh
```

**Step 3 — run Script 2:**
```bash
bash script2.sh
```

**Step 4 — run Script 3:**
```bash
bash script3.sh
```

**Step 5 — run Script 4:**
```bash
bash script4.sh /var/log/dpkg.log install
```
Script 4 takes two arguments — a log file path and a keyword to search for. The keyword defaults to 'error' if you don't provide one. Use `/var/log/dpkg.log` with the keyword `install` on Ubuntu/WSL for reliable output.

**Step 6 — run Script 5:**
```bash
bash script5.sh
```
Script 5 is interactive. It will ask you three questions — type your answer and press Enter after each one. The manifesto is automatically saved to a `.txt` file in the current directory.

---

## Dependencies

All tools used in these scripts come pre-installed on Ubuntu. No additional setup is needed except installing Git itself if it is not already present.

| Tool | Used In | Install Command |
|---|---|---|
| bash | All scripts | Pre-installed |
| uname, whoami, uptime, date | Script 1, 5 | Pre-installed |
| dpkg, grep, awk | Script 2 | Pre-installed |
| ls, du, cut, printf | Script 3 | Pre-installed |
| tail | Script 4 | Pre-installed |
| git | Script 2 | `sudo apt install git` |

---

## Common Issues

| Problem | Fix |
|---|---|
| Permission denied when running script | Run `chmod +x scriptname.sh` first |
| Script 4 shows 0 matches | Try `bash script4.sh /var/log/dpkg.log install` |
| bad interpreter error | Run `sed -i 's/\r//' scriptname.sh` — Windows line ending issue |
| nano not found | Run `sudo apt install nano` |

---

## Environment

All scripts were written and tested on:
- **OS:** Ubuntu 24.04 LTS
- **Environment:** WSL2 on Windows 11
- **Shell:** GNU Bash 5.2

---

## References

- Torvalds, L. (2005). Git announcement — Linux Kernel Mailing List. lkml.org/lkml/2005/4/6/121
- Chacon, S. and Straub, B. Pro Git, 2nd Edition. git-scm.com/book
- GNU Project. GNU General Public License v2. gnu.org/licenses/old-licenses/gpl-2.0.html
- Stallman, R. The Free Software Definition. gnu.org/philosophy/free-sw.html
- Open Source Initiative. The Open Source Definition. opensource.org/osd
- Shotts, W. The Linux Command Line. linuxcommand.org
- GNU Bash Manual. gnu.org/software/bash/manual

---

*Submitted for the Open Source Software (CSE0002) course — VIT Bhopal University, March 2026*
