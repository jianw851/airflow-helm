#!/bin/bash

# Check for command parameter
if [[ -z "${1}" ]]; then
  echo "Please specify a pod."
fi

# Get the name of the pod
POD_NAME=$(kubectl get pod -o name | grep $1 | cut -d / -f 2)

if [[ -z "${POD_NAME}" ]]; then
  echo "Pod not found."
fi

kubectl cp init_airflow_vars_and_conns.sh ${POD_NAME}:/opt/airflow/
kubectl exec ${POD_NAME} -- /bin/bash /opt/airflow/init_airflow_vars_and_conns.sh
