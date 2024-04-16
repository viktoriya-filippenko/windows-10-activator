@echo off
title Activate Windows 10 ALL versions for FREE!
cls
echo =====================================
echo #Copyright: kmspico-official.org
echo =====================================
echo.
echo #Supported products:
echo - Windows 10 Home
echo - Windows 10 Professional
echo - Windows 10 Enterprise
echo - Windows 10 Education
echo.

:: Check if the script can locate the Windows system directory
cd /d %windir%\system32

:: Installing product keys for various Windows 10 editions
echo Installing product keys...
echo.
cscript //nologo slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul  :: Windows 10 Pro
cscript //nologo slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul  :: Windows 10 Home
cscript //nologo slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul  :: Windows 10 Enterprise
cscript //nologo slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >nul  :: Windows 10 Education

echo.
echo ====================================
echo Activating Windows 10...
set i=1

:server
:: Try different KMS servers for activation
if %i%==1 set KMS_Sev=kms.MSGuides.com
if %i%==2 set KMS_Sev=kms2.MSGuides.com
if %i%==3 set KMS_Sev=kms3.MSGuides.com
if %i%==4 goto unsupported

cscript //nologo slmgr.vbs /skms %KMS_Sev% >nul
echo ------------------------------------
echo.
cscript //nologo slmgr.vbs /ato | find /i "successfully" && (
    echo.
    echo ======================================
    echo Windows 10 activated successfully.
    pause
    exit
) || (
    echo The connection to the server failed! Trying to connect to another one...
    echo Please wait...
    echo.
    set /a i+=1
    goto server
)

:unsupported
echo.
echo ======================================
echo Sorry! Your version of Windows 10 is not supported.
echo Please try installing the latest version here: 
start https://bit.ly/kmsget

:halt
pause
