#!/bin/bash

echo 'deploy demo'
cd /root/deploy/demo
git pull
chmod 777 demo.sh
mvn package
kill `lsof -t -i:8090`
java -jar ./target/demo-0.0.1-SNAPSHOT.jar --server.port=8090 &