<#

increment all numbered files for folders.

i.e.

increment file or folder by one

01_file.md -> 02_file.md
01_folder -> 02_folder

#>
param([string]$folder=".", [int]$increment=1, [int]$start=2, [switch]$verbose)

$files = Get-ChildItem *.md

foreach ($item in $files){

    $name = $item.Name
    $name_split = $name.Split("_")
    $id = [int]$name_split[0]
    $lenid = $name_split[0].Count

    if ($id -ge $start){
        $id += $increment
        $id = "{0:d$lenid}" -f $id
        $name_split[0] = $id
        $new_name = $name_split -join "_"
        Rename-Item -Path $item -NewName $new_name
        if ($verbose){
            Write-Output "$name -> $new_name"
        }
    }
}
