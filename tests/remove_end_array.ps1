using namespace System.Collections

$test_array = [ArrayList]@(1, 2, 3, 4, 5)

$len_array = $test_array.Count

$test_array.RemoveAt($len_array - 1)

$len_array_final = $test_array.Count

Write-Output $len_array
Write-Output $len_array_final