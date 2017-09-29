# Zeppelin Service for NDS Workbench
This Dockerfile creates an image for
[Apache Zeppelin](https://zeppelin.apache.org) which is a notebook based
application that is more tailored to creating Spark applications.

This image is based on the
[official Apache Image](https://hub.docker.com/r/apache/zeppelin/) and has
been enhanced as follows:
1. Reduces the installed interpreters to focus only on those that work inside
the current workbench ecosystem
2. Adds a run-time environment variable, `LIVY` which allows for the URL of
the Livy server to be passed in during startup.

## How to Use
To bring up a single user Zeppelin server that has access to your Livy server just enter
this command:

`docker run -p 8081:8080 -e "LIVY=http://XXX.XXX.XXX:8999" bengalewsky/nds-zeppelin`

Where the X's are replace with the URL of your Livy server.

You can then navigate to http://localhost:8080 to access Zeppelin.
