@echo off
set FILE=artifact\message.txt

findstr /C:"DevOps" "%FILE%" >nul

IF %ERRORLEVEL% EQU 0 (
  echo Artifact check passed.
  exit /b 0
) ELSE (
  echo Artifact check failed.
  exit /b 1
)
