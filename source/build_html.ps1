using module "D:\Github\PandocBuilder\cm_PandocBuilder.psm1"

$builder = [Compiler]::new("$PSScriptRoot/../index.html")

$source_folder = [FileFolder]::new("$PSScriptRoot/documents")

$builder.add_folder($source_folder)

$builder.add_option(
    "--template", "$PSScriptRoot/template.html"
)

$builder.add_option(
    "--css", "$PSScriptRoot/template.css"
)

$builder.add_option(
    "--self-contained"
)

$builder.add_option("--toc")
$builder.add_option("--toc-depth=1")

$builder.add_option("--metadata title=`"VSCode`"")

$builder.run()