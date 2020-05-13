Import-Module "$PSScriptRoot/_config.ps1"
Import-Module "$lib/powershell/compiler.ps1" 

$folder_1 = "D:\Github\VSCodeQualityOfLife\source\documents"
$folder_2 = "D:\Github\VSCodeQualityOfLife\test_recurse"

$filefolder_1 = [FileFolder]::new($folder_1)
$filefolder_2 = [FileFolder]::new($folder_2)

Write-Output $filefolder_1
Write-Output $filefolder_2


