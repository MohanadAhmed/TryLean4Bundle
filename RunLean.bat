@ECHO OFF
:: Lets get to Work!!
:: Control Elan's location by ELAN_HOME and Cache Location by XDG_CACHE_HOME
::::::::::::::::::: Prepare Environment Variables and Clean Path
set Path=C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;%USERPROFILE%\AppData\Local\Microsoft\WindowsApps;%CD%;%CD%\PortableGit\bin\;%CD%\Elan\bin\
set ELAN_HOME=%CD%\Elan
set XDG_CACHE_HOME=%CD%\Cache
set ELECTRON_EXTRA_LAUNCH_ARGS=--disable-gpu-sandbox
set DEMOPROJ=DemoProj
set /p LEAN_TOOLCHAIN_VERSION=<lean-toolchain

::::::::::::::::::: Star New Project in VSCodium
cd mathematics_in_lean
lake exe cache unpack
cd ..
VSCodium\VSCodium.exe mathematics_in_lean