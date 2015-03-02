@ECHO OFF
SET "RUNDIR=%~dp0"
SET "TARGETDIR=%~dpn1"

IF "%TARGETDIR:Plugins=%" == "%TARGETDIR%" SET "TARGETDIR=%TARGETDIR%\Plugins\"
IF "%TARGETDIR:Editor=%" == "%TARGETDIR%" SET "TARGETDIR=%TARGETDIR%\Editor\"
IF "%TARGETDIR:Generation=%" == "%TARGETDIR%" SET "TARGETDIR=%TARGETDIR%\Generation\"
IF NOT EXIST "%TARGETDIR%" MKDIR "%TARGETDIR%"
MKLINK /J "%TARGETDIR%\RandomDistributionPlugin" "%RUNDIR%"