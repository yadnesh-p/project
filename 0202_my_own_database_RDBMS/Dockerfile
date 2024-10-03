#############################################################################
## Description: This is a script to check and edit the
## version of the yaml files to pull the latest image
## from dockerhub
##
## CREATED BY: YADNESH PURAV
## CREATION DATE: 03 OCTOBER 2024
##
#############################################################################
FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD = ${MYSQL_ROOT_PASSWORD}
ENV MYSQL_USER=${MYSQL_USER}
ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}
COPY *.env /etc/env/
EXPOSE 3306
