#!/bin/bash

# Removing of previous deployment
rm -rf $CATALINA_HOME/webapps/ROOT.war

# Creating root deployment of given artifact
cp $APPLICATION_DIR/*.war $CATALINA_HOME/webapps/ROOT.war

if [ "$?" -ne "0" ]; then
	echo 'Due start of contaner error occur'
	exit 1
fi

# Starting tomcat
$CATALINA_HOME/bin/catalina.sh run
