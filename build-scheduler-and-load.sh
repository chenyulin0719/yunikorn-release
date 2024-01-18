#!/bin/bash


#REGISTRY=local VERSION=latest make clean image
REGISTRY=local VERSION=latest make clean sched_image
REGISTRY=local VERSION=latest make clean adm_image

kind load docker-image local/yunikorn:admission-amd64-latest  --name yunikorn
kind load docker-image local/yunikorn:scheduler-amd64-latest  --name yunikorn
#kind load docker-image local/yunikorn:webtest-amd64-latest  --name yunikorn

kubectl delete pods -l component=yunikorn-admission-controller -n yunikorn
kubectl delete pods -l component=yunikorn-scheduler -n yunikorn
