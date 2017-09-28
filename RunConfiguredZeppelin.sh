#!/bin/bash
ls /zeppelin/bin
echo "Livy is $LIVY"
sed  -i "s#.*zeppelin\.livy\.url.*#\"zeppelin.livy.url\": \"${LIVY}\",#" /zeppelin/conf/interpreter.json
/zeppelin/bin/zeppelin.sh
