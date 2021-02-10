# chocolatey

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# firefox
choco install firefox

# vs2019
choco install visualstudio2019community
choco install visualstudio2019-workload-nativedesktop

# cmake
choco install cmake

# python3 (anaconda)
choco install anaconda3

# unity hub
choco install unity-hub

# git
choco install git
refreshenv

# blender
choco install blender

# miktex
choco install miktex

# powershell core
choco install powershell-core

# rapid environment editor
choco install rapidee

# dependency walker modern
choco install dependencies

# notepad++
choco install notepadplusplus

# powertoys
choco install powertoys

# 7zip
choco install 7zip

# sumatra PDF
choco install sumatrapdf

# quicklook
choco install quicklook

# conemu
choco install conemu

# ffmpeg
choco install ffmpeg

# skype
choco install skype

# zoom
choco install zoom

# franz
choco install franz

# steam
choco install steam

# google play music / YT music desktop player
choco install gpmdp

# vcpkg
mkdir /dev
cd /dev
git clone https://github.com/microsoft/vcpkg.git
./vcpkg/bootstrap-vcpkg.bat


