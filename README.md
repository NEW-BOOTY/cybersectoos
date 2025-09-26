Cybersecurity Toolkit Installer

Overview

This Bash script automates the installation of a set of cybersecurity tools on macOS using Homebrew. It installs Nmap, Wireshark, Aircrack-ng, John the Ripper, and Metasploit, which are commonly used for network scanning, packet analysis, wireless security testing, password cracking, and penetration testing.

Features

Installs Homebrew if not already present.

Checks for existing installations to avoid redundancy.

Installs the following tools:

Nmap: Network exploration and security/port scanning.

Wireshark: Network protocol analyzer for capturing and inspecting packets.

Aircrack-ng: Tools for assessing Wi-Fi network security.

John the Ripper: Password cracker for testing password strength.

Metasploit: Penetration testing framework for simulating attacks.

Logs all actions to ~/cybersec_install.log for troubleshooting.

Prerequisites

macOS system (Homebrew is primarily designed for macOS).

Internet connection to download Homebrew and tools.

Administrative privileges (some tools may require sudo during installation).

Installation

Save the script to a file, e.g., install_cybersec.sh.

Make the script executable:

chmod +x install_cybersec.sh

Run the script:

./install_cybersec.sh

Usage

The script will:

Check for and install Homebrew if missing.

Install each tool if not already present.

Log all actions (success or failure) to ~/cybersec_install.log.

After execution, check the log file for details:

cat ~/cybersec_install.log

Tools Installed

Tool

Purpose

Nmap

Network scanning and vulnerability discovery

Wireshark

Packet capture and network traffic analysis

Aircrack-ng

Wi-Fi security testing and analysis

John the Ripper

Password strength testing and cracking

Metasploit

Penetration testing and exploit development

Notes

Security: Ensure you trust the Homebrew installation source. The script downloads from the official Homebrew GitHub repository.



Ethical Use: These tools are powerful and should only be used on systems you own or have explicit permission to test.



Log File: The log file (~/cybersec_install.log) may contain system paths. Secure it if sharing.



Dependencies: Some tools (e.g., Wireshark) may require additional setup or permissions post-installation.

Troubleshooting


Check ~/cybersec_install.log for errors if a tool fails to install.



Ensure you have an active internet connection.



Some tools may prompt for sudo privileges during installation.



If Homebrew installation fails, verify the URL or install it manually: https://brew.sh

Contributing

Feel free to submit issues or pull requests to improve the script, such as adding new tools or enhancing error handling.

License

This script is provided as-is under the MIT License. Use responsibly and at your own risk.
