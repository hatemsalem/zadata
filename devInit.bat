echo off
echo "Please stop Tomcat"
pause
echo "Removing resources folder"
rd /s /q c:\zadata\resources
echo "Removing init\hotlines"
rd /s /q c:\zadata\init\hotlines
echo "Removing init\cat_res"
rd /s /q c:\zadata\init\cat_res
echo "Removing init\res"
rd /s /q c:\zadata\init\res
echo "Removing init\logs"
rd /s /q c:\zadata\logs
echo "Removing init\jsonoffers"
rd /s /q c:\zadata\jsonoffers

echo "Kindly start up the tomcat, then press enter"
pause
echo "Copying init data files--Categories, Press any key to continue"
cd \zadata
pause
copy c:\zadata\init\sealed\categories.csv c:\zadata\init\*.*
echo "Copying init data files--16xxx hotlines,Press any key to continue"
pause
md c:\zadata\init\hotlines
md C:\zadata\init\cat_res
md C:\zadata\init\res
copy c:\hotlines\16*.txt c:\zadata\init\hotlines\*.*
pause 
copy c:\hotlines\19*.txt c:\zadata\init\hotlines\*.*
pause

echo "Copying logos of companies and groups"
xcopy C:\zadata\init\sealed\cat_res\*.* C:\zadata\init\cat_res\*.* /E
xcopy C:\zadata\init\sealed\res\*.* C:\zadata\init\res\*.* /E