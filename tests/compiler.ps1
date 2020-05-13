using module "D:\Github\PandocBuilder\cm_PandocBuilder.psm1"

[OutputFile]$output_file = "D:\Github\VSCodeQualityOfLife\source\test.pdf"

$compiler = [Compiler]::new($output_file)
$compiler.add_folder("D:\Github\VSCodeQualityOfLife\source\documents")
$compiler.add_option("--toc")

$output = $compiler.run()

Write-Output $output