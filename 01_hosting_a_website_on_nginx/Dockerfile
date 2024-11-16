#############################################################################
## Description: This is a simple Dockerfile which is  
## used to build the nginx image with our html file 
## for the web page
##
## CREATED BY: YADNESH PURAV
## CREATION DATE: 26 SEPTEMBER 2024
##
##  VERSION      DATE        AUTHOR      UPDATE
##    0.1     16-11-2024       YP      updated platform variable    
#############################################################################

FROM --platform=$BUILDPLATFORM nginx AS build     
COPY *.html /usr/share/nginx/html/
