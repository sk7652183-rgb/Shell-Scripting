##  Log Generator Script (DevOps Branch)**

### 📖 Overview

To support testing of the Log Rotation and Maintenance automation scripts, I created a utility called **`log_generator.sh`**. This script generates realistic log files with randomly generated log entries, making it easier to test log management workflows without relying on production logs.

This script is especially useful in DevOps environments where large log files are required to validate automation tasks such as log rotation, compression, monitoring, backup, and scheduled maintenance.

---

## ✨ Features

* Accepts the log file path and the number of log entries as command-line arguments.
* Validates the number of arguments before execution.
* Prevents accidental overwriting by checking if the log file already exists.
* Creates a new log file automatically.
* Generates timestamped log entries.
* Produces random log levels:

  * `INFO`
  * `DEBUG`
  * `WARNING`
  * `ERROR`
  * `CRITICAL`
* Generates realistic error messages for `ERROR` logs, including:

  * Failed to connect
  * Disk full
  * Segmentation fault
  * Invalid input
  * Out of memory
* Generates random numeric identifiers for every log entry.
* Displays a success message after the log file has been created.

---

## 🛠️ Script Workflow

1. Validate command-line arguments.
2. Verify that the destination log file does not already exist.
3. Create an empty log file.
4. Generate the requested number of random log entries.
5. Assign a timestamp to every entry.
6. Randomly select a log level.
7. If the level is `ERROR`, include a random error message.
8. Save each entry to the log file.
9. Display the location of the generated log file.

---

## 📂 Usage

```bash
chmod +x log_generator.sh
./log_generator.sh <log_file_path> <number_of_log_entries>
```

---

## 💻 Example

Generate a log file with **1000** entries:

```bash
./log_generator.sh /tmp/application.log 1000
```

---

## 📄 Sample Output

```text
2026-06-27 18:20:01 [INFO] - 14235
2026-06-27 18:20:02 [DEBUG] - 98451
2026-06-27 18:20:03 [WARNING] - 76322
2026-06-27 18:20:04 [ERROR] Disk full - 11873
2026-06-27 18:20:05 [CRITICAL] - 65312
2026-06-27 18:20:06 [ERROR] Failed to connect - 44827
```

---

## 🚀 DevOps Use Cases

This script can be used to:

* Test **Log Rotation** scripts before deploying them.
* Validate **gzip compression** and cleanup automation.
* Generate logs for **monitoring tools**.
* Simulate application logs for **backup testing**.
* Create sample data for **ELK Stack**, **Grafana**, or **Splunk** labs.
* Test scheduled **Cron jobs** and maintenance scripts.
* Practice troubleshooting and log analysis in a safe environment.

---

## 📁 Related Scripts

This script complements the following automation scripts in the **DevOps** branch:

* **log_rotate.sh** – Compresses and removes old log files.
* **backup.sh** – Creates automated backups with rotation.
* **maintenance.sh** – Executes scheduled maintenance tasks using Cron.
* **system_info.sh** – Generates system health reports.

Together, these scripts demonstrate a complete DevOps automation workflow for log management, backup, system monitoring, and scheduled maintenance.
