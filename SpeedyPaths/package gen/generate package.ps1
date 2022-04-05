Set-ExecutionPolicy -ExecutionPolicy Unrestricted
$version = Select-String -Path ../SpeedyPaths.cs '"(\d+(\.\d+)+)"' | Foreach-Object {$_.Matches} | 
       Foreach-Object {$_.Groups[1].Value}
"Current dev Version: $version"
$outputDir = -join($PSScriptRoot, "\Release Assets\", $version, "_dev\")
"Output Dir: $outputDir"
If(!(test-path $outputDir))
{
       mkdir -p $outputDir"\"
}

#copy files from package_manifest.txt
foreach($line in Get-Content $PSScriptRoot"\package_manifest.txt") {
       Copy-Item -Path $PSScriptRoot"\"$line -Destination $outputDir
}

#update manifest version
$manifest = Get-Content $outputDir"\manifest.json" -raw | ConvertFrom-Json
$manifest.version_number = $version
$manifest = $manifest | ConvertTo-Json  # | Out-File $outputDir"manifest.json"
$manifest = "$($manifest -replace "  "," ")".Trim() 
$manifest | Out-File $outputDir"\manifest.json"

$zipFile = -join($outputDir, "SpeedyPaths_", $version, ".zip")
If((test-path -Path $zipFile -PathType Leaf))
{
       Remove-Item -Path $zipFile -Force
       "Killed old zip"
}
Compress-Archive -Path $outputDir"*" -DestinationPath $zipFile
"Zipped Artifacts: $zipFile"

Invoke-Item "$outputDir"