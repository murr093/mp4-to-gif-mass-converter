@echo off
setlocal enabledelayedexpansion

REM Set 
REM -vf scale=500:-1 
REM -r 15 
REM -f 
REM -gifflags +transdiff 
REM -y 

for %%f in (*.mp4) do (
    set "filename=%%~nf"
    echo Converting "!filename!.mp4" to "!filename!.gif"...
    ffmpeg -i "%%f" -vf scale=500:-1 -r 15 -f gif -gifflags +transdiff -y "!filename!.gif"
)

echo Conversion complete.
pause