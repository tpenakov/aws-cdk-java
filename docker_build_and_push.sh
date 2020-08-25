#!/bin/sh
set -x #echo on

export PWD=$(pwd)
export IMAGE_NAME=triphon/aws-cdk-java
export TAG_NAME=awscdk1.6.0-java11-node12-mvn3.6

docker build --network host -f Dockerfile.aws-cdk-java -t ${IMAGE_NAME} . && \
  docker tag ${IMAGE_NAME}:latest ${IMAGE_NAME}:${TAG_NAME} && \
  docker push ${IMAGE_NAME}:latest && \
  docker push ${IMAGE_NAME}:${TAG_NAME}


