#!/bin/sh
echo $HOME
cd $HOME

cd /home/$USER/workspace/CalendarOnline/WebContent
ls
rm -rf Site.war
jar -cvf Site.war *

cp Site.war /home/$USER/Documents/TOMCAT/webapps

cd $HOME 
cd /home/adrian/Documents/TOMCAT
chmod 777 -R bin
cd bin
sh startup.sh

firefox localhost:8080/CalendarOnline/