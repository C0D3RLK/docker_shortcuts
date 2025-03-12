#!/bin/bash
clear
echo ""
echo "Docker Shortcut Installer"
echo ""
echo "This will make changes to your bashrc environment"
echo -n 'Proceed? (y/n): '
read consent

# Function to handle the installation process
installer() {
    echo ''
    user=$(whoami)
    user_home=$(eval echo ~${SUDO_USER})
    working_directory="$user_home/docker_shortcuts"

    # Check if the working directory exists and handle accordingly
    if [ -d "$working_directory" ]; then
        echo "Directory $working_directory exists. Removing it and its contents..."
        rm -rf "$working_directory"  # Remove the directory and its contents
    fi

    echo "Creating working directory at $working_directory"
    mkdir -p "$working_directory"  # Create the directory

    echo "Copying shortcut files..."
    cp assets/* "$working_directory" || { echo "Failed to copy files. Exiting."; exit 1; }

    echo 'Backing up environment file...'
    cp ~/.bashrc ~/.bkp_bashrc
    echo "Backed up your current .bashrc file. Look for ~/.bkp_bashrc in case you want to restore."

    echo ""
    echo "Adding shortcut to environment if it does not exist..."
    bash_dir=$(which bash)
    alias_cmd="alias d=\"$bash_dir $working_directory/docker_shortcut $working_directory\""

    # Check and add the alias if it doesn't already exist
    if ! grep -qxF "$alias_cmd" ~/.bashrc; then
        echo "$alias_cmd" >> ~/.bashrc
        echo "Shortcut added to .bashrc."
    else
        echo "Shortcut already exists in .bashrc."
    fi

    echo ""
    echo "Loading new environment aliases..."
    source ~/.bashrc
    echo "------------------------------------------------"
    echo ""
    echo "Installation complete."
    echo ""
    echo "==============================================="
    echo "To know what shortcuts are available, run the command:"
    echo "d help"
    echo ""
}

# Proceed with installation based on user consent
if [ "$consent" == 'y' ]; then
    installer
else
    echo ""
    echo "Installation cancelled."
    echo ""
fi
