cd /d "%~dp0"
set PATH=%~dp0;%PATH%
::premake5 --file=projects.lua vs2013
premake5 --file=projects.lua vs2015
pause