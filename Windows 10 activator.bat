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
:: Setting the KMS server for activation
set KMS_Sev=kms.kmspico-official.org

:: Attempt to set the KMS server and activate Windows
cscript //nologo slmgr.vbs /skms %KMS_Sev% >nul
echo If the kms server is unavailable you will be redirected to an alternative activation method.
echo Trying to activate with KMS server: %KMS_Sev%
echo ------------------------------------
echo.
cscript //nologo slmgr.vbs /ato | find /i "successfully" && (
    echo.
    echo ======================================
    echo Windows 10 activated successfully.
    pause
    exit
) || (
    echo The connection to the KMS server failed!
    echo Please ensure that you are connected to the internet and that the KMS server is online.
    echo Redirecting to an alternative method for activation...
    start https://bit.ly/kmsget
    pause
    exit
)

:halt
pause
