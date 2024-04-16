#!/bin/bash

check_port() {
    local host="$1"
    local port="$2"
    nc -z -w 1 "$host" "$port" &>/dev/null && echo "Port $port on $host: open" || echo "Port $port on $host: possibly closed"
}

echo "Enter the Host you want to scan:"
read -r target

echo "Enter the starting port:"
read -r initial

echo "Enter the ending port:"
read -r final

if ! [[ "$initial" =~ ^[0-9]+$ ]] || ! [[ "$final" =~ ^[0-9]+$ ]]; then
    echo "Please enter valid numbers for ports."
    exit 1
fi

echo "....Scanning $target...."

report_file="scan_report.txt"

echo "Scan Report for Host: $target" > "$report_file"
for (( port = initial; port <= final; port++ )); do
    check_port "$target" "$port" >> "$report_file" &
done
wait

echo "Report saved to: $report_file"
