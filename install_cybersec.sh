/*
 * Copyright © 2025 Devin B. Royal.
 * All Rights Reserved.
 */

#!/bin/bash

# === Cybersecurity Toolkit Installer ===
# Installs Metasploit, Nmap, Wireshark, Aircrack-ng, and John the Ripper via Homebrew

LOGFILE="$HOME/cybersec_install.log"
BREW_CMD=$(command -v brew)

# --- Logging Function ---
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOGFILE"
}

# --- Check for Homebrew ---
if [ -z "$BREW_CMD" ]; then
    log "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    BREW_CMD=$(command -v brew)
    if [ -z "$BREW_CMD" ]; then
        log "Homebrew installation failed. Exiting."
        exit 1
    fi
else
    log "Homebrew found at $BREW_CMD"
fi

# --- Tool List ---
TOOLS=(
    "nmap"
    "wireshark"
    "aircrack-ng"
    "john"
)

# --- Install Tools ---
for tool in "${TOOLS[@]}"; do
    if $BREW_CMD list "$tool" &>/dev/null; then
        log "$tool is already installed."
    else
        log "Installing $tool..."
        $BREW_CMD install "$tool" && log "$tool installed successfully." || log "Failed to install $tool."
    fi
done

# --- Metasploit Special Case ---
if $BREW_CMD list metasploit &>/dev/null; then
    log "Metasploit is already installed."
else
    log "Installing Metasploit..."
    $BREW_CMD install --cask metasploit && log "Metasploit installed successfully." || log "Failed to install Metasploit."
fi

log "✅ Installation complete. Check $LOGFILE for details."
