Import-Module "$PSScriptRoot/_config.ps1"
Import-Module "$lib/powershell/compiler.ps1"

$test_inputfile = "D:\Github\VSCodeQualityOfLife\source\documents\01_introduction.md"
$test_settingsfile = "D:\Github\VSCodeQualityOfLife\source\settings.yaml"
$output_file_1 = ""
$output_file_2 = "."
$output_file_3 = [FileInfo]::new(".")

$test = [File]::new()
$test_inputfile = [InputFile]::new($test_inputfile)
$test_yamlfile = [YAMLFile]::new($test_settingsfile)
$test_outputfile_1 = [OutputFile]::new($output_file_1)
$test_outputfile_2 = [OutputFile]::new($output_file_2)
$test_outputfile_3 = [OutputFile]::new($output_file_3).FullName

Write-Output $test 
Write-Output $test_inputfile
Write-Output $test_yamlfile
Write-Output $test_outputfile_1
Write-Output $test_outputfile_2
Write-Output $test_outputfile_3
