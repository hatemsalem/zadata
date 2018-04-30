

call rebuildBE.bat 


echo "Removing work folder"
echo "========================="
pause
rd /s /q c:\zadata\work
echo "Kindly start up the tomcat, then press enter"
pause
REM call startup.bat
echo "Copying init data files Press any key to continue"
xcopy c:\zadata\sealed c:\zadata\work\ /e/t
xcopy C:\zadata\sealed\categories\*.* C:\zadata\work\categories\*.* /E
echo "Copying init data files- hotlines,Press any key to continue"
pause
xcopy C:\zadata\sealed\hotlines\*.* C:\zadata\work\hotlines\*.* 
REM echo "Copying init data files--19xxx hotlines,Press any key to continue"
REM pause
REM xcopy C:\zadata\sealed\hotlines\19*.* C:\zadata\work\hotlines\*.* 
echo "Copying Logos,Press any key to continue"
pause
xcopy C:\zadata\sealed\logos\*.* C:\zadata\work\logos\*.* /E
