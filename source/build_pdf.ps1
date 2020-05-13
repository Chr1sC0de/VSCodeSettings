using module "D:\Github\PandocBuilder\cm_PandocBuilder.psm1"

[OutputFile]$output_file = "D:\Github\VSCodeQualityOfLife\source\doc.pdf"

$compiler = [Compiler]::new($output_file)
$compiler.add_folder("D:\Github\VSCodeQualityOfLife\source\documents")
$compiler.add_option("--toc")
$compiler.add_option("--toc-depth=1")

$output = $compiler.run()

Write-Output $output