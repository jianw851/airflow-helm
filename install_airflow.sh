# https://airflow.apache.org/docs/helm-chart/stable/index.html
kubectl config set-context --current --namespace airflow
#kubectl apply -f airflow-extra-env-variables.yaml
kubectl create secret generic airflow-ssh-secret --from-file=gitSshKey=/root/.ssh/id_rsa -n airflow
kubectl create secret generic airflow-webserver-secret --from-literal="webserver-secret-key=$(python3 -c 'import secrets; print(secrets.token_hex(16))')"
# not needed for gitsync
#kubectl apply -f ./persistentvolume/dags_sc.yaml
#kubectl apply -f ./persistentvolume/dags_pv.yaml
#kubectl apply -f ./persistentvolume/dags_pvc.yaml
# not needed for KubernetesExecutor
#kubectl apply -f ./persistentvolume/workers_sc.yaml
#kubectl apply -f ./persistentvolume/workers_pv.yaml
#kubectl apply -f ./persistentvolume/workers_pvc.yaml
kubectl apply -f ./persistentvolume/logs_sc.yaml
kubectl apply -f ./persistentvolume/logs_pv.yaml
kubectl apply -f ./persistentvolume/logs_pvc.yaml
helm install -f values_production.yaml liveflow apache-airflow/airflow --namespace airflow --debug --timeout 20m0s
