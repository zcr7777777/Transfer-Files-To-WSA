@echo off
:sstartt
set /p varIP=Your WSA IP: 
echo PleaseWait...
D:\ADB\adb connect %varIP%
set /p strr=Input 1 to restart ,input 0 to continue:
if %strr%==1 (
D:\ADB\adb disconnect %varIP%
echo -----------------------------------------
goto sstartt
)
echo +++++++++++++++++++++++++++++++++++++++++
:sstart
set /p varPath=Your file Path(  " "  IS REQUIRED):
echo PleaseWait...
D:\ADB\adb push %varPath% /sdcard/
set /p strr=Input 1 to restart ,input 0 to exit:
if %strr%==1 (
echo -----------------------------------------
goto sstart
)