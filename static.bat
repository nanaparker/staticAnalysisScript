@echo off
set arg1=%1
mkdir "Output"
echo Running CAPA
capa -v -q %arg1% > Output/capaOutput.txt
echo ---------------
echo Running EXIFTOOL
exiftool -q %arg1% >> Output/exifOutput.txt
echo Running FLOSS
floss -n 6 -q %arg1% >> Output/flossOutput.txt
echo ---------------