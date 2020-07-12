# Remote SSH and WSL

## Remote SSH

To remote SSH from VSCode we can install the

[Remote - SSH](
    "https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh")
extension. The tool is quite simple to use.

## Public Key Authentication

[Public Key Authentication](https://www.ssh.com/ssh/public-key-authentication)
provides a user single sign-on across SSH servers, allow automatic passwordless
logins. The following script will automate log in for the Spartan super
computer, taken from [Virtual Geek](http://vcloud-lab.com/entries/devops/How-to-Setup-Passwordless-SSH-Login-on-Windows),

```powershell
param(
[string]$Computer="spartan.hpc.unimelb.edu.au",
[string]$User="cmamon"
)

$old_location = Get-Location

Set-Location -Path $env:USERPROFILE

$profile_path = $env:USERPROFILE -replace "\\", "/"

Write-Host "INFO: Checking $profile_path/.ssh/id_rsa" -ForegroundColor Cyan

if (-not (Test-Path -Path "./.ssh/id_rsa")){
if (-not (Test-Path -Path "./.ssh")){
    New-Item -Path "./" -Name .ssh -ItemType Directory -Force
    Write-Host "INFO: $profile_path/.ssh directory" -ForegroundColor Cyan
}
ssh-keygen.exe -t rsa -b 4096 -N '""' -f "./.ssh/id_rsa" 
Write-Host "INFO: Generated $profile_path/.ssh/id_rsa file" `
    -ForegroundColor Cyan
} else {
Write-Host "INFO: $profile_path/.ssh/id_rsa file already exists, skipping ..." `
    -ForegroundColor Cyan
}

$id_rsa_location = "$profile_path/.ssh/id_rsa"
$remote_ssh_server_login = "$User@$Computer"

Write-Host "INFO: Copying $profile_path/.ssh/id_rsa.pub to $Computer,
Type password"  -ForegroundColor Cyan

scp.exe -o 'StrictHostKeyChecking no' "$id_rsa_location.pub"
"${remote_ssh_server_login}:~/tmp.pub"
Write-Host "INFO: Updating authorized_keys on $Computer, Type password`n" `
-ForegroundColor Cyan
ssh.exe "$remote_ssh_server_login" "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat ~/tmp.
pub >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys && rm -f ~/tmp.pub"

Set-Location -Path $old_location

Write-Host "INFO: Thy SSH $Computer Now it will not prompt for password"
-ForegroundColor Green
```

## Remote WSL

To run WSL from VSCode install
[Remote - WSL](
"https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl").

Once installed to make things more readable we can install
[oh-my-bash](https://github.com/ohmybash/oh-my-bash). To change the
highlighting the easiest method is to use the 
[LS_Colors Generator](https://geoff.greer.fm/lscolors/) by Geoff Greer.

Once your colours have been decided we set them by changing `LS_COLORS` variable
in our .bashrc,

```bash
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;
41:sg=30;46:tw=1;32;1:ow=33"
```
