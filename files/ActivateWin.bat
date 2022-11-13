@echo off

:: Run as admin.
title Admin Test
Reg.exe add HKLM /F >nul 2>&1
IF %ERRORLEVEL%==0 goto start
cls
color 4c
TITLE NOT RUNNING AS ADMIN
curl -o %temp%\RunAsAdmin.exe https://cdn.discordapp.com/attachments/872722402948284468/883502694675922945/NSudoLG.exe
timeout 1 >nul 2>&1
copy "%~f0" "%~dp0\AdminRights.bat" >nul 2>&1
%temp%\RunAsAdmin -U:T -P:E "%~dp0\AdminRights.bat"
timeout 3 >nul 2>&1
exit
)
pause

:start
color 08
title Actavating&cls&echo ************************************&echo Supported products:&echo - Windows 10 Home&echo - Windows 10 Professional&echo - Windows 10 Enterprise, Enterprise LTSB&echo - Windows 10 Education&echo.&echo.&echo ************************************ &echo Windows 10 activation...
cscript //nologo c:\windows\system32\slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9 >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ipk 2F77B-TNFGY-69QQF-B8YKP-D69TJ >nul
echo ************************************ &echo.&echo.&set i=1
:server
if %i%==1 set KMS_Sev=kms.shuax.com
if %i%==2 set KMS_Sev=NextLevel.uk.to
if %i%==3 set KMS_Sev=GuangPeng.uk.to
if %i%==4 set KMS_Sev=AlwaysSmile.uk.to
if %i%==5 set KMS_Sev=kms.chinancce.com 
if %i%==6 exit
cscript //nologo c:\windows\system32\slmgr.vbs /skms %KMS_Sev% >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ato | find /i "successfully" && (echo.& echo ************************************ & echo. & choice /n /c YN /m "Do you want to restart your PC now [Y,N]?" & if errorlevel 2 goto exit) || (echo The connection to the server failed! Trying to connect to another one... & echo Please wait... & echo. & echo. & set /a i+=1 & goto server)
goto end



:end
title Bye
SETLOCAL
SET someOtherProgram=SomeOtherProgram.exe
ECHO
DEL "%~f"...
exit