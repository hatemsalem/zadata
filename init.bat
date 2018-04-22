echo off
echo "Trying to stop tomcat,  Press any key to continue"
pause
pushd "C:\Program Files\Apache Software Foundation\Tomcat 9.0\bin"
call shutdown.bat
popd
pause
echo "Removing work folder"
rd /s /q c:\zadata\work
echo "Kindly start up the tomcat, then press enter"
pause
REM call startup.bat
echo "Copying init data files Press any key to continue"
xcopy c:\zadata\sealed c:\zadata\work\ /e/t
xcopy C:\zadata\sealed\categories\*.* C:\zadata\work\categories\*.* /E
echo "Copying init data files--16xxx hotlines,Press any key to continue"
pause
xcopy C:\zadata\sealed\hotlines\16*.* C:\zadata\work\hotlines\*.* 
xcopy C:\zadata\sealed\hotlines\issues\*16113.* C:\zadata\work\hotlines\*.* 
xcopy C:\zadata\sealed\hotlines\issues\*16404.* C:\zadata\work\hotlines\*.* 
xcopy C:\zadata\sealed\hotlines\issues\*16061.* C:\zadata\work\hotlines\*.* 
xcopy C:\zadata\sealed\hotlines\issues\*16257.* C:\zadata\work\hotlines\*.* 
echo "Copying init data files--19xxx hotlines,Press any key to continue"
pause
xcopy C:\zadata\sealed\hotlines\19*.* C:\zadata\work\hotlines\*.* 
echo "Copying Logos,Press any key to continue"
pause
xcopy C:\zadata\sealed\logos\*.* C:\zadata\work\logos\*.* /E
