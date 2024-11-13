#/bin/bash
clear
echo ""
echo "Docker shortcut installer"
echo ""
echo "This will make changes in your bashrc environment"
echo -n 'Proceed #:> (y/n): '
read consent


installer(){
echo ''
user=$(whoami)
user_home=$(eval echo ~${SUDO_USER})
working_directory="$user_home/docker_shortcuts"
current_dir=$(pwd)
bash_dir=$(which bash)
alias_cmd="$bash_dir $working_directory/docker_shortcut $working_directory"
echo "Creating working directory in $working_directory $current_dir"
mkdir $working_directory
echo "Copying shortcut files"
cp assets/* $working_directory
echo 'Backing up environment file'
cp ~/.bashrc ~/.bkp_bashrc
echo "Backedup your current .bashrc file, look for ~/.bkp_bashrc incase you want to restore"
echo ""
echo "Adding shortcut into environment"
echo "alias d=\"$alias_cmd\"" >>  ~/.bashrc
echo ""
echo "Loading new environment aliases"
echo ""
source ~/.bashrc
echo "------------------------------------------------"
echo ""
echo "Installtion complete"
echo ""
echo "==============================================="
echo "To know what shortcuts available, run command"
echo "d help"
echo ""
}








if [ $consent == 'y' ]
then
installer
else
echo ""
echo "Installation cancelled"
echo ""
fi


