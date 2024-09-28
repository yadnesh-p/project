#!/bin/bash
echo "Hello World"
#a = $(docker ps | wc -l)
if [ $? -gt 1 ]
then
        echo "passed"
else
        echo "failed"
fi

curl http://127.0.0.1:8080 -s > /dev/null
if [ $? -eq 0 ]
then
        echo "passed"
else
        echo "failed"
fi

