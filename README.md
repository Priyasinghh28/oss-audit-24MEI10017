# OSS Audit — [24MEI10017]

Name: Priya
Roll Number: 24MEI10017
Software Chosen: Git (GPL v2)
Course: Open Source Software — VIT

About
Capstone project for OSS course. This repo contains 5 shell scripts
that demonstrate Linux and bash scripting skills using Git as the
chosen open-source software.


Scripts

| File       |    Description                                            |
|------------|-----------------------------------------------------------|
| script1.sh | System Identity Report — shows OS, kernel, user, uptime   |
| script2.sh | FOSS Package Inspector — checks if Git is installed       |
| script3.sh | Disk and Permission Auditor — loops through directories   |
| script4.sh | Log File Analyzer — counts keywords in a log file         |
| script5.sh | Manifesto Generator — saves your OSS philosophy to a file |

 How to Run
```bash
git clone https://github.com/yourusername/oss-audit-rollnumber.git
cd oss-audit-rollnumber
chmod +x scripts/*.sh
bash scripts/script1.sh
bash scripts/script2.sh
bash scripts/script3.sh
bash scripts/script4.sh
bash scripts/script5.sh
```

---

## Dependencies
No installation needed. All tools (bash, grep, awk, dpkg) come
pre-installed on Ubuntu and GitHub Codespaces.
