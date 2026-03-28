# OS-audit


**Name:** Aleena Manesh I ||
**Roll Number:** 24MIM10034 ||
**Chosen Software:** Git

## Project Description

This project help analyze Git as an open-source software system, while also taking into account its origin, license, Linux footprint, ecosystem, and comparison with proprietary tools. It  includes five shell scripts demonstrating Linux and automation concepts.

## Scripts

### 1. System Identity Report

Displays system info including kernel, user, uptime, and OS license.

### 2. FOSS Package Inspector

Checks if Git is installed and displays version and description.

### 3. Disk and Permission Auditor

Analyzes important directories and reports size and permissions.

### 4. Log File Analyzer

Searches log files for keywords like "error" and counts occurrences.

### 5. Open Source Manifesto Generator

Generates a personalized open-source philosophy statement.

## How to Run

```bash
chmod +x script_name.sh
./script_name.sh
```

Example:

```bash
./script4_log_analyzer.sh /var/log/syslog error
```

## Requirements

* Linux system
* Bash shell
* Git installed
