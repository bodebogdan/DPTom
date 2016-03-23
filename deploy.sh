#!/bin/bash

DIR=$(dirname $0)
MYSQL_ROOT_PASSWORD="root123"
PROJECT_HOME="/home/$USER/workspace/CalendarOnline"
TOMCAT_HOME="/home/$USER/Documents/TOMCAT"

sudo apt-get install ant -y
pushd $PROJECT_HOME
ant clean && ant build
rm -rf $PROJECT_HOME/WebContent/WEB-INF/classes/*
cp -rf $PROJECT_HOME/build/classes/* $PROJECT_HOME/WebContent/WEB-INF/classes/
popd

pushd $PROJECT_HOME/WebContent
rm -rf CalendarOnline.war
jar -cvf CalendarOnline.war *
mv CalendarOnline.war $TOMCAT_HOME/webapps
popd

ctrl_c() {
    $TOMCAT_HOME/bin/shutdown.sh
}

chmod +x -R $TOMCAT_HOME/bin
trap ctrl_c INT
$TOMCAT_HOME/bin/startup.sh

mysql -u root -p"$MYSQL_ROOT_PASSWORD" < $DIR/project.sql

firefox http://localhost:8080/CalendarOnline/

