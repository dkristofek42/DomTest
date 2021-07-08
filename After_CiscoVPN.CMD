@echo off

netsh interface ip delete arpcache

ipconfig /flushdns

ipconfig /renew

pause
Exit /b
