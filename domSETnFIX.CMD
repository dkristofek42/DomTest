@echo off
powercfg -h off

powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

powercfg -l
Pause

DEL /S /F /Q "%ALLUSERSPROFILE%\Application Data\Microsoft\Group Policy\History\*.*"

netsh interface ip delete arpcache

powershell Test-ComputerSecureChannel -repair

gpupdate /force

w32tm /resync

Pause

Exit /b
