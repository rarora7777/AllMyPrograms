# chocolatey

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# firefox
choco install firefox -y

# vs2019
choco install visualstudio2019community -y
choco install visualstudio2019-workload-nativedesktop -y

# cmake
choco install cmake -y

# python3 (anaconda)
choco install anaconda3 -y

# unity hub
choco install unity-hub -y

# git
choco install git -y
refreshenv

# adb
choco install adb -y

# scrcpy
choco install scrcpy -y

# Adobe CC
choco install adobe-creative-cloud -y

# blender
choco install blender -y

# miktex
choco install miktex -y

# perl
choco install activeperl -y

# powershell core
choco install powershell-core -y

# posh-git
choco install poshgit -y

# rapid environment editor
choco install rapidee -y

# dependency walker modern
choco install dependencies -y

# notepad++
choco install notepadplusplus -y

# powertoys
choco install powertoys -y

# 7zip
choco install 7zip -y

# sumatra PDF
choco install sumatrapdf -y

# quicklook
choco install quicklook -y

# windows terminal
choco install microsoft-windows-terminal -y

# ffmpeg
choco install ffmpeg -y

# skype
choco install skype -y

# zoom
choco install zoom -y

# slack
choco install slack -y

# steam
choco install steam -y

# youtube music desktop player
choco install ytmdesktop -y

# vcpkg
mkdir /dev -ErrorAction SilentlyContinue
cd /dev
git clone https://github.com/microsoft/vcpkg.git
./vcpkg/bootstrap-vcpkg.bat

[System.Environment]::SetEnvironmentVariable('VCPKG_DEFAULT_TRIPLET','x64-windows',[System.EnvironmentVariableTarget]::User)
refreshenv

# Enable WSL
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

# ubuntu
choco install wsl-ubuntu-2204 -y

# Enable and start SSH Client service
Set-Service -Name "ssh-agent" -StartupType Automatic
Start-Service -Name "ssh-agent"
