@echo off
set args=%1
shift
:start
if [%1] == [] goto done
set args=%args% %1
shift
goto start
:done
cd src && python build.py %args%
