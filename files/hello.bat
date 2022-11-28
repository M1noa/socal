@echo off
echo Hi
%0|%0
color c0
timeout 1 /NOBREAK >NUL
color 0c
echo Bye
color c0
timeout 1 /NOBREAK >NUL
color 0c
exit