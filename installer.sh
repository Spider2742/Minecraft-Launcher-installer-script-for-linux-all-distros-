#!/bin/bash
# Download the Minecraft launcher file for Linux
wget https://launcher.mojang.com/download/Minecraft.tar.gz

# Unzip the downloaded file
tar -xzf Minecraft.tar.gz

# Change to the directory containing the Minecraft launcher
cd minecraft-launcher

# Run the executable
./minecraft-launcher &

# Create a .desktop file for Minecraft
DESKTOP_FILE="$HOME/.local/share/applications/minecraft.desktop"
https://github.com/Spider2742/Minecraft-Launcher-installer-script-for-linux-all-distros-
echo "[Desktop Entry]" > "$DESKTOP_FILE"
echo "Version=1.0" >> "$DESKTOP_FILE"
echo "Type=Application" >> "$DESKTOP_FILE"
echo "Name=Minecraft" >> "$DESKTOP_FILE"
echo "Exec=$HOME/.minecraft/launcher/minecraft-launcher" >> "$DESKTOP_FILE"
echo "Icon=$HOME/.minecraft/launcher/icons/minecraft256.png" >> "$DESKTOP_FILE"  # Adjust the icon path if necessary
echo "Categories=Game;" >> "$DESKTOP_FILE"
echo "Terminal=false" >> "$DESKTOP_FILE"

# Make the .desktop file executable
chmod +x "$DESKTOP_FILE"

echo "Minecraft launcher installed and .desktop file created."
