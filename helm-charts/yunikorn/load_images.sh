#!/bin/zsh
kind load docker-image "local/yunikorn:scheduler-arm64-latest" --name yunikorn-kind
kind load docker-image "local/yunikorn:admission-arm64-latest" --name yunikorn-kind
#kind load docker-image "local/yunikorn:webtest-arm64-latest" --name yunikorn-kind
