echo off
echo "Trying to stop tomcat,  Press any key to continue"
echo "========================="
pause
pushd "C:\Program Files\Apache Software Foundation\Tomcat 9.0\bin"
call shutdown.bat
popd

echo off
echo "Rebuild ZobonApp Backend"
echo "========================="
pause
pushd c:\zobonapp
git pull --ff-only
cd parent
call mvn clean install
echo "check if no errors"
echo "========================="
pause
rd /s /q "C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps\web"
del "C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps\web.war"
copy "C:\zobonapp\web\target\web-1.0.war" "C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps\web.war"
popd
echo "check if the web.war is ok"
echo "========================="
dir "C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps\web.war"
echo "========================="

echo "If everything is ok,Kindly start up the tomcat, then press enter"
pause