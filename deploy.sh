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
<<<<<<< HEAD
cd /home/$USER/Documents/TOMCAT
=======
cd /home/adrian/Documents/TOMCAT
>>>>>>> ca82db536b49e7a4568fdb993059e9d49af4ea1d
chmod 777 -R bin
cd bin
sh startup.sh

<<<<<<< HEAD
firefox localhost:8080/CalendarOnline/Login.jsp
=======
firefox localhost:8080/CalendarOnline/
>>>>>>> ca82db536b49e7a4568fdb993059e9d49af4ea1d
