#############################################################################
## Description: This is a script to check and edit the 
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
echo 'Removing Trailing spaces from files if any'
sed -i 's/\s\+$//g' *.yaml
previous_version=$(grep -h -m1 'image:' *.yaml | cut -d"." -f2 | head -n1)
echo "This is the older version of image: $previous_version"
sed -i s/$previous_version/v$BUILD_NUMBER/g *.yaml
current_version=$(grep -h 'image:' *.yaml | cut -d"." -f2 | head -n1)
echo "This is the current_version of image: $current_version"
echo "Version updated"
