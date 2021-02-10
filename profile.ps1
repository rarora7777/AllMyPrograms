# Posh-git and SSH setup
Import-Module posh-git

$GitPromptSettings.DefaultPromptPath.ForegroundColor = 'Cyan'
$GitPromptSettings.DefaultPromptPath.Text = 'PS:$(Split-Path $(Get-PromptPath) -Leaf)'

#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
(& "\dev\Anaconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | Invoke-Expression
#endregion

function mklink { cmd /c mklink $args }

ssh-add (Resolve-Path ~/.ssh/github_rsa)
ssh-add (Resolve-Path ~/.ssh/id_rsa)

# Load vcpkg integration
Import-Module '\dev\vcpkg\scripts\posh-vcpkg'

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}


Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete



