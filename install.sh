#!/bin/bash
URL="https://raw.githubusercontent.com/rpmfusion/steam/master"
RULES=("51-these-are-not-joysticks-rm.rules" "60-steam-input.rules"
"60-steam-vr.rules")

# Cleanup any old versions of the rules if this script has been run before
rm *.rules

# Download the udev rules from rpmfusion/steam
echo "Fetching steam udev rules..."
for rule in ${RULES[@]}; do
    wget $URL/$rule
done

# Install udev rules
sudo cp *.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules
sudo udevadm trigger
echo "Steam udev rules installed."