#!/bin/bash
kubectl logs -l component=yunikorn-admission-controller -n yunikorn > yunikorn-admission-controller-logs.txt
kubectl logs -l component=yunikorn-scheduler -n yunikorn > yunikorn-scheduler-logs.txt

