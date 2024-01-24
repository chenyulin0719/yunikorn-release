#!/bin/bash


REGISTRY=local VERSION=latest make clean image
TMPDIR=$HOME kind load docker-image local/yunikorn:web-amd64-latest  --name yunikorn
kubectl delete pods -l component=yunikorn-scheduler -n yunikorn
