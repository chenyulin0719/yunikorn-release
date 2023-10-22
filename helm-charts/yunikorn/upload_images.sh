#!/bin/zsh

#docker tag kh87313/yunikorn:admission-arm64-0.0.1 kh87313/yunikorn:admission-arm64-latest
#docker tag kh87313/yunikorn:scheduler-arm64-0.0.1 kh87313/yunikorn:scheduler-arm64-latest

docker push kh87313/yunikorn:admission-amd64-latest
docker push kh87313/yunikorn:scheduler-amd64-latest
