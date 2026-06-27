# 📦 Backup.sh

A Bash script that automates directory backups by creating timestamped ZIP archives and automatically rotating old backups to keep only a specified number of recent backups.

## ✨ Features

* Creates compressed ZIP backups of any directory.
* Generates timestamped backup files.
* Automatically creates the backup directory if it doesn't exist.
* Logs all backup operations with timestamps.
* Rotates old backups to save disk space.
* Configurable number of backups to retain.
* Uses strict Bash options (`set -euo pipefail`) for safer execution.

## 📋 Prerequisites

* Linux
* Bash
* `zip` utility

Install `zip` if it is not already installed:

```bash
sudo apt update
sudo apt install zip
```

## 🚀 Usage

```bash
./Backup.sh <source_dir> <backup_dir> [max_backups]
```

### Parameters

| Parameter     | Description                                                  |
| ------------- | ------------------------------------------------------------ |
| `source_dir`  | Directory to back up                                         |
| `backup_dir`  | Directory where backups will be stored                       |
| `max_backups` | *(Optional)* Number of recent backups to keep (default: `5`) |

## 💡 Example

```bash
./Backup.sh /var/log /mnt/backup 7
```

This command:

* Creates a ZIP backup of `/var/log`
* Stores it in `/mnt/backup`
* Retains only the **7 most recent** backups

## 📂 Backup File Format

```
backup_YYYY-MM-DD-HH-MM-SS.zip
```

Example:

```
backup_2026-06-27-18-30-45.zip
```

## 📝 Log File

All backup operations are logged in:

```
backup.log
```

The log includes:

* Backup start time
* Backup success or failure
* Deleted old backups during rotation
* Backup completion status

## 🔄 Backup Rotation

If the number of backups exceeds the specified limit, the script automatically removes the oldest backup files while keeping the most recent ones.

## 📁 Project Structure

```
.
├── Backup.sh
└── README.md
```

## 👤 Author

**Abusufiyan Khan**
