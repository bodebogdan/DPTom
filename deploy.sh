#!/bin/sh
echo $HOME
cd $HOME

cd /home/$USER/workspace/CalendarOnline/WebContent
ls

rm -rf Site.war
rm -rf CalendarOnline.war

jar -cvf CalendarOnline.war *

cp CalendarOnline.war /home/$USER/Documents/TOMCAT/webapps

cd $HOME 
cd /home/$USER/Documents/TOMCAT
chmod 777 -R bin
cd bin
sh startup.sh

firefox localhost:8080/CalendarOnline/Login.jsp