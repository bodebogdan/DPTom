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

<<<<<<< HEAD
firefox localhost:8080/CalendarOnline/
=======
firefox localhost:8080/Site/
>>>>>>> ca82db536b49e7a4568fdb993059e9d49af4ea1d
