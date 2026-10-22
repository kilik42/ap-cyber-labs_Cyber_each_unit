# AP Cybersecurity Investigation Labs

**A six-lab collection for evidence-based cybersecurity learning**

This repository contains introductory cybersecurity investigations designed for high school students. Each lab combines a realistic fictional incident, a student investigation packet, and supporting evidence files. Students use Linux tools to examine records, interpret technical findings, and write conclusions supported by evidence.

**Platform:** School-provided Cyber Range Linux environment. Students complete the investigations inside their assigned Cyber Range session, not on personal computers or an external Codespace. No prior professional cybersecurity experience is required; basic terminal familiarity is helpful.

## Learning objectives

By completing the investigations, students will practice:

- Navigating a Linux file system and examining text-based evidence.
- Interpreting authentication logs, network records, and system information.
- Distinguishing observations from assumptions.
- Connecting multiple evidence sources to reconstruct events.
- Explaining findings clearly and recommending appropriate security responses.
- Working within defined ethical and technical boundaries.

## Lab catalog

| Lab | Investigation | Focus |
| --- | --- | --- |
| 01 | The School Account Breach | Phishing, account activity, and evidence correlation |
| 02 | Robotics Lab Entry | Physical access records and event reconstruction |
| 03 | The Mysterious Open Port | Network services, scanning, and security monitoring |
| 04 | Midnight Login | Authentication records and suspicious access |
| 05 | The Compromised Workstation | Processes, persistence, and file integrity |
| 06 | The Portal Data Leak | Web activity, exposed data, and defensive analysis |

## Getting started in Cyber Range

Sign in to the **school Cyber Range**, launch the Linux machine assigned by your instructor, and open its terminal. All commands below are entered **inside that Cyber Range terminal**, not in Windows PowerShell, Git Bash, or a local computer. Run each command separately. Your Cyber Range session must have access to GitHub to download the ZIP. If downloads are blocked, ask your instructor for the approved distribution method.

### 1. Download the repository

```bash
cd ~
wget -O cyber-labs.zip https://github.com/kilik42/ap-cyber-labs_Cyber_each_unit/archive/refs/heads/main.zip
```

### 2. Extract the files

```bash
unzip cyber-labs.zip
```

If `unzip` is unavailable but Python 3 is installed:

```bash
python3 -m zipfile -e cyber-labs.zip .
```

### 3. Locate the materials

```bash
cd ~/ap-cyber-labs_Cyber_each_unit-main
ls
```

If the directory contains a folder named `ap-cyber-labs`, enter it:

```bash
cd ap-cyber-labs
```

Confirm that the working directory contains `pdfs/` and `evidence/`:

```bash
ls
```

The nested folder step reflects the original lab package. If the published repository has a different layout, use `ls` to locate those directories rather than assuming a path.

### 4. Confirm your location

```bash
pwd
ls -lah
```

You should be inside the lab package and see the `evidence` and `pdfs` folders. If you do not, stop and ask your instructor to confirm the repository layout.

### 5. Open the assigned investigation

For Lab 1:

```bash
cd evidence/lab1
ls -lah
```

Use the corresponding student PDF in `pdfs/` as your investigation instructions. If your Cyber Range only provides a terminal, open the PDF in your classroom browser or use the instructor-provided copy. Keep the PDF visible while working in the Cyber Range terminal.

### Returning to your lab in a later Cyber Range session

Cyber Range machines may reset or be replaced between sessions. First check whether the lab files are still present:

```bash
ls ~/ap-cyber-labs_Cyber_each_unit-main
```

If the directory is missing, repeat the download and extraction steps. Save investigation answers in the location designated by your instructor; do not assume files in the Cyber Range persist after logout.

## Repository organization

The original lab package uses the following layout:

```text
ap-cyber-labs/
├── pdfs/
│   ├── AP_Cyber_Lab_01_School_Account_Breach_Student.pdf
│   ├── AP_Cyber_Lab_02_Robotics_Lab_Entry_Student.pdf
│   ├── AP_Cyber_Lab_03_Mysterious_Open_Port_Student.pdf
│   ├── AP_Cyber_Lab_04_Midnight_Login_Student.pdf
│   ├── AP_Cyber_Lab_05_Compromised_Workstation_Student.pdf
│   └── AP_Cyber_Lab_06_Portal_Data_Leak_Student.pdf
└── evidence/
    ├── lab1/
    ├── lab2/
    ├── lab3/
    ├── lab4/
    ├── lab5/
    └── lab6/
```

Each evidence directory contains the materials for its corresponding investigation. Students should use only the files specified in their assigned packet.

## Working with evidence

A useful investigation follows a repeatable process:

1. **Read the case.** Identify the central question and the evidence available.
2. **Inspect the files.** Examine the supplied records without altering the originals.
3. **Document observations.** Record relevant timestamps, filenames, accounts, and events.
4. **Correlate findings.** Compare multiple sources before drawing conclusions.
5. **Report results.** State what the evidence supports, what remains uncertain, and what should happen next.

### Basic terminal reference

```bash
pwd                        # Show the current directory
ls -lah                    # List files and file sizes
cat filename.txt           # Read a short text file
less filename.txt          # Read a longer file
head filename.txt          # Display the first lines
grep -i 'failed' auth.log  # Search a log for a term
sha256sum filename.txt     # Calculate a SHA-256 hash
```

Replace sample filenames with files in the assigned evidence folder. Some example commands may not apply to every lab.

## Troubleshooting

| Issue | Recommended action |
| --- | --- |
| `wget: command not found` | Ask the instructor for an alternative download method, such as `git clone`. |
| `unzip: command not found` | Use the Python 3 extraction command above. |
| Download returns `404` | Confirm the repository is public and that its default branch is `main`. |
| `No such file or directory` | Use `pwd` and `ls` to inspect the current path and folder names. |
| A student PDF will not open in the terminal | View it in the classroom browser or use the instructor-provided copy. |
| GitHub download is blocked in Cyber Range | Ask the instructor to distribute the ZIP through an approved Cyber Range file-transfer method. |
| Files disappear after logout | The Cyber Range may reset sessions; re-download and store your completed work using the instructor-approved submission method. |
| Files already exist | Do not overwrite your working files without checking with the instructor. |

## Authorized use and evidence handling

These exercises use fictional evidence for educational purposes. All commands and investigations must remain within the instructor-approved Cyber Range and assigned targets.

- Do not scan the school network, other students' systems, or public hosts.
- Do not execute suspicious evidence files unless the lab explicitly requires it and the instructor authorizes it.
- Preserve original evidence; use a separate working directory for notes or modifications.
- For network scanning exercises, use `127.0.0.1` or a target expressly approved by the instructor.
- Report unexpected access, credentials, or sensitive information to the instructor rather than investigating beyond the lab scope.

## For instructors

The original lab package contains separate teacher answer keys. **Keep those files outside the student-accessible repository.** Verify that only student packets and intended evidence files are published.

Before assigning a lab, test its instructions and commands **inside the actual student Cyber Range VM**. Confirm outbound GitHub access, `wget`, extraction support, persistence between sessions, access to the student PDFs, and whether any network lab requires additional instructor-provided services. The original packaged `setup.sh` referenced a placeholder repository URL; the download procedure above does not depend on that script.

This README assumes the repository's default branch is `main` and uses the folder structure supplied in the original package. Confirm both against the published repository before distributing the setup commands.

---

**Repository:** https://github.com/kilik42/ap-cyber-labs_Cyber_each_unit

**Purpose:** Classroom instruction and authorized cybersecurity practice.
