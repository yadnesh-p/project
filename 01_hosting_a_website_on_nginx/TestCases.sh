#!/bin/bash
a=$(docker ps | wc -l)
if [ $a -gt 1 ]
then
        echo "passed the first case"
else
        echo "failed the first case"
fi

curl http://127.0.0.1:8080 -s > /dev/null
if [ $? -eq 0 ]
then
        echo "passed the second case"
else
        echo "failed the second case"
fi
