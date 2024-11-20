@echo off
set arg1=%1

mkdir "Output"

echo "Getting Hash"
md5sum %arg1% > Output/FileHash.txt
sha1sum %arg1% >> Output/FileHash.txt
sha256sum %arg1% >> Output/FileHash.txt
echo ---------------

echo Running CAPA
capa -v -q %arg1% > Output/capaOutput.txt
echo ---------------

echo Running EXIFTOOL
exiftool -q %arg1% > Output/exifOutput.txt
echo ---------------

echo Running FLOSS
floss -n 6 -q %arg1% > Output/flossOutput.txt
echo ---------------
