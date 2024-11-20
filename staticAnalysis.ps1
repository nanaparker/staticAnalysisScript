# The goal of this is to run through the first few Static Analysis steps to have time to do other things

mkdir "Output"
Write-Host "Getting Hash"
md5sum $args[0] > Output/FileHash.txt
sha1sum $args[0] >> Output/FileHash.txt
sha256sum $args[0] >> Output/FileHash.txt

Write-Host "Running CAPA"
capa -v -q $args[0] > Output/capaOutput.txt
Write-Host "---------------"

Write-Host "Running EXIFTOOL"
exiftool -q $args[0] > Output/exifOutput.txt
Write-Host "---------------"

Write-Host "Running FLOSS"
floss -n 6 -q $args[0] > Output/flossOutput.txt
Write-Host "---------------"

Write-Host "Opening Detect It Easy"
die $args[0]
