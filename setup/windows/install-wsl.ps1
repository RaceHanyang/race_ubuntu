# Enable WSL feature
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Enable Virtual Machine Platform feature
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Set WSL 2 as the default version
wsl --set-default-version 2

# Install Ubuntu 24.04
wsl --install -d Ubuntu-24.04

# Restart the system to apply changes (if necessary)
Write-Host "Installation complete. Please restart your computer to apply changes."
