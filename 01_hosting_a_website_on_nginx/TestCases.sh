#############################################################################
## Description: This is a script to check and execute 
## Test Cases to check whether docker container is 
## running or NOT
##
## CREATED BY: Yadnesh Purav
## CREATION DATE: 28 SEPTEMBER 2024
#############################################################################

#!/bin/bash
a=$(docker ps | wc -l)
if [ $a -gt 1 ]
then
        echo "First Test Case passed"
else
        echo "First test case failed kindly check if the container is running"
        kill $$
fi

curl http://127.0.0.1:8080 -s > /dev/null
if [ $? -eq 0 ]
then
        echo "Second Test Case passed"
else
        echo "Second test case failed kindly check "
        kill $$
fi
