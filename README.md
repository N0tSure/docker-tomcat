## Tomcat for development

This image may be used for development. It use `admin` as admin login and password, manager **GUI** enabled for all hosts.

> WARNING
> This image should used for development only, because it contain sufficient security issues. Don't use this image for containers, if you need appropriate level of security in your web. 

### Usage

To run the image:

`docker run -d -v <YOUR_TARGET_DIR>:/srv/app -p 8080:8080 asirosh/tomcat`, where

* YOUR_TARGET_DIR -- folder, which contain your **war** artifact

When you run container, `start.sh` remove prefiously deployed artifact and copy into `$CATALINA_HOME/webapps` your **war** file as `ROOT.war`. Hence your artifact will deployed into context root.

> Note
> You can deploy just one artifact per container.
