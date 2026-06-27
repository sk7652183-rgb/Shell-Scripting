#!/bin/bash

set -euo pipefail

# Print hostname and OS information
print_system_info() {
    echo "Hostname: $(hostname)"
    echo "OS Information:"
    cat /etc/os-release | grep "^PRETTY_NAME="
}

# Print system uptime
print_uptime() {
    echo "System Uptime:"
    uptime -p
}

# Print top 5 largest files/directories in current directory
print_disk_usage() {
    echo "Top 5 Largest Files/Directories:"
    du -sh ./* 2>/dev/null | sort -hr | head -n 5
}

# Print memory usage
print_memory_usage() {
    echo "Memory Usage:"
    free -h
}

# Print top 5 CPU-consuming processes
print_top_cpu_processes() {
    echo "Top 5 CPU-Consuming Processes:"
    ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6
}

# Main function
main() {
    echo "=================================="
    echo "      SYSTEM INFORMATION"
    echo "=================================="

    echo
    echo "----- Hostname & OS Info -----"
    print_system_info

    echo
    echo "----- Uptime -----"
    print_uptime

    echo
    echo "----- Disk Usage -----"
    print_disk_usage

    echo
    echo "----- Memory Usage -----"
    print_memory_usage

    echo
    echo "----- Top CPU Processes -----"
    print_top_cpu_processes
}

main
