Import-Module "$PSScriptRoot/_config.ps1"
Import-Module "$lib/powershell/compiler.ps1" 

$option = [Option]::new("-verbose", "'path to some file'")

Write-Output $option.as_option()