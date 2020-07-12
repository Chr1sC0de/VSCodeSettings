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

Write-Host "INFO: Copying $profile_path/.ssh/id_rsa.pub to $Computer, Type password" `
    -ForegroundColor Cyan
scp.exe -o 'StrictHostKeyChecking no' "$id_rsa_location.pub" "${remote_ssh_server_login}:~/tmp.pub"
Write-Host "INFO: Updating authorized_keys on $Computer, Type password`n" `
    -ForegroundColor Cyan
ssh.exe "$remote_ssh_server_login" "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat ~/tmp.pub >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys && rm -f ~/tmp.pub"

Set-Location -Path $old_location

Write-Host "INFO: Thy SSH $Computer Now it will not prompt for password" -ForegroundColor Green
