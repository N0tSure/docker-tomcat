FROM    tomcat:latest

MAINTAINER asirosh

ENV    CONFIG_DIR=/srv/config \
    SCRIPT_DIR=/srv/script \
    APPLICATION_DIR=/srv/app

RUN    mkdir -p $CATALINA_HOME/conf/Catalina/localhost

COPY    . /srv

RUN    cp $CONFIG_DIR/manager.xml $CATALINA_HOME/conf/Catalina/localhost && \
    cp $CONFIG_DIR/tomcat-users.xml $CATALINA_HOME/conf && \
    rm -rf $CATALINA_HOME/webapps/ROOT

CMD    $SCRIPT_DIR/start.sh
