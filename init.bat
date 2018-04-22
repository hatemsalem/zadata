echo "Trying to stop tomcat,  Press any key to continue"
pause
cd "C:\Program Files\Apache Software Foundation\Tomcat 9.0\bin"
call shutdown.bat
echo "Removing resources folder, Press Enter to continue"
pause
rd /s /q c:\zadata\resources
rd /s /q c:\zadata\init\hotlines
rd /s /q c:\zadata\init\cat_res
rd /s /q c:\zadata\init\res
echo "Kindly start up the tomcat, then press enter"
pause
REM call startup.bat
echo "Copying init data files--Categories, Press any key to continue"
cd \zadata
pause
copy c:\zadata\init\sealed\categories.csv c:\zadata\init\*.*
echo "Copying init data files--16xxx hotlines,Press any key to continue"
pause
md c:\zadata\init\hotlines
copy c:\hotlines\16*.txt c:\zadata\init\hotlines\*.*
pause 
copy c:\hotlines\19*.txt c:\zadata\init\hotlines\*.*
pause