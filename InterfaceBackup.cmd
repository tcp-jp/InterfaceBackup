@echo off 
setlocal enabledelayedexpansion
goto main

:: ===================================================================
:: Creator : Joe Paterson                                            |
:: Version : 0.1                                                     |
:: Last Updater : Joe Paterson                                       |
:: Last Update : Created script...                                   |
:: ===================================================================
:: ====================                                              |
:: How The Script Works                                              |
:: ====================                                              |
:: This script iterates through a list of interfaces,                |
:: the names of which are an abrieviation of the full interface name.|
:: This name is also the description of a label.                     |
:: ==================================================================|
:: ==========================                                        |
:: How To Add An Interface                                           |
:: ==========================                                        |
:: First use the name of the file you are using to check if the      |
:: interface is installed. Check this works in cmd and copy it into  |
:: the script.                                                       |
:: ==================================================================|

:vars
:: Todo -- Replace numbers with actual interfaces
set passwords=Password1 Password2 Password3

:prelim
set pwd=c:\tissl\Interfaces
if not exist %pwd% md %pwd%
cd %pwd%
set log=%pwd%%date:/=-%.log
call :vars
call :scheduledtask
call :sevenzip
goto :eof

:: Todo -- Check and create scheduled task
:: POS01 copy
:: sevenzip
:scheduledtask
goto :eof

:remoteBackup
goto :eof

:sevenzip
goto :eof

:: Interface calls 
:: Todo -- replace calls with actual interfaces...
:one
echo Check || echo not found goto eof
echo found so backing up 
goto :eof
:two
echo Check || echo not found goto eof
echo found so backing up 
goto :eof
:three
echo Check || echo not found goto eof
echo found so backing up 
goto :eof
:four
echo Check || echo not found goto eof
echo found so backing up 
goto :eof

:interfaceCall
for %%a in (%list%) do (echo Current : %%a
  call :%%a
goto :eof

:main
call :prelim
call :interfaceCheck
call :interfaceBackup
call :remoteBackup
