#############################################################################
## Description: This is a file to check and edit the 
## version of the yaml files to pull the latest image 
## from dockerhub
##
## CREATED BY: Yadnesh Purav
## CREATION DATE: 01 OCTOBER 2024
#############################################################################

#!/bin/bash
echo $BUILD_NUMBER
pwd
cd 01_hosting_a_website_on_nginx
previous_version = $(grep -h 'image' *.yaml | cut -d"." -f2)
#echo "$previous_version"
#sed -i 's/${previous_version}/v${BUILD_NUMBER}/g' 01_hosting_a_website_on_nginx/*.yaml
#current_version = $(grep -h 'image' 01_hosting_a_website_on_nginx/*.yaml | cut -d"." -f2)
#echo "$current_version"

