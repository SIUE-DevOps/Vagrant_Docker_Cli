############################################################
# Powershell script to install DevOps Vagrant Environment
# Downloads and installs Wget, Virtualbox, Vagrant, and github desktop OR Git
# Author: Joshua Haupt josh@hauptj.com Date: 23.11.2017
############################################################

##### Open IE #####

# Open IE so the user can choose the recommended settings
# SOURCE: https://superuser.com/questions/529832/how-to-open-internet-explorer-for-the-desktop-from-command-line-in-windows-8
Write-Host 'When IE opens please choose "Use recommended security and compatibility settings"'

# Set-Execution Policy for IEexplorer to open
Set-ExecutionPolicy RemoteSigned

# Open IE
Invoke-Item "C:\Program Files\Internet Explorer\iexplore.exe"

# Wait for user input to confirm they openned IE and chose the correct settings
# SOURCE: https://technet.microsoft.com/en-us/library/ff730938.aspx
Write-Host 'After you have chosen "Use recommended security and compatibility settings", press any key to continue'
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

##### Install Chocolatey #####

Write-Host "Installing Chocolatey package manager"
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

##### Install Packages #####

# Install Virtualbox
Write-Host "Installing Virtualbox"
cinst  virtualbox -y

# Install Vagrant
Write-Host "Installing Vagrant"
cinst vagrant -y

# Install Git
Write-Host "Installing Git"
cinst git.install -y

##### Configure Vagrant for Windows provisioning #####

Write-Host 'Installing Vagrant plugin "vagrant-guest_ansible" for Windows provisioning'
vagrant plugin install vagrant-guest_ansible

Write-Host "Done"
