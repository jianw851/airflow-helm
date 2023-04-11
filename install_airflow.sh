# https://airflow.apache.org/docs/helm-chart/stable/index.html
kubectl config set-context --current --namespace airflow
kubectl apply -f airflow-extra-env-variables.yaml
kubectl apply -f ./persistentvolume/dags_sc.yaml
kubectl apply -f ./persistentvolume/dags_pv.yaml
kubectl apply -f ./persistentvolume/dags_pvc.yaml
kubectl apply -f ./persistentvolume/workers_sc.yaml
kubectl apply -f ./persistentvolume/workers_pv.yaml
kubectl apply -f ./persistentvolume/workers_pvc.yaml
kubectl apply -f ./persistentvolume/logs_sc.yaml
kubectl apply -f ./persistentvolume/logs_pv.yaml
kubectl apply -f ./persistentvolume/logs_pvc.yaml
helm install -f values_latest.yaml liveflow apache-airflow/airflow --namespace airflow --debug --timeout 20m0s
