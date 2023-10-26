#!/bin/bash
kubectl get pods -A | grep Terminating > Terminating.log
while read line;do
  POD=`echo $line | awk -F " " '{print $2}'`
  NAMESPACE=`echo $line | awk -F " " '{print $1}'`
  kubectl delete pod $POD -n $NAMESPACE --force
done < Terminating.log
