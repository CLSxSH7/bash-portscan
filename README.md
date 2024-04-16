## Usage

1. **Run the script:**

    Execute the `port_scan.sh` script and follow the prompts to specify the host and port range to scan.

    ```bash
    ./port_scan.sh
    ```

    Follow the on-screen prompts to enter the host address, starting port, and ending port. The script will then scan the specified range of ports on the given host and generate a report.

2. **View the report:**

    After the scan completes, the script will save the scan report to a file named `scan_report.txt` in the current directory. You can view this report to see the status of each scanned port.

## Requirements

- Bash

## Notes

- This script uses the `nc` (netcat) command to check the status of each port. Ensure that `nc` is installed on your system before running the script.
