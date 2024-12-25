#!/bin/bash
TAG=${RANDOM:8:9}
SERVICE=$1
mvn package -DskipTests
sleep 30s

docker build -t dannhanong/$SERVICE:$TAG .
sleep 30s

docker push dannhanong/$SERVICE:$TAG
sleep 30s

kubectl set image deployment/$SERVICE $SERVICE=dannhanong/$SERVICE:$TAG
