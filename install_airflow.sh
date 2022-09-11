# https://airflow.apache.org/docs/helm-chart/stable/index.html
kubectl apply -f airflow-extra-env-variables.yaml
kubectl apply -f ./pv/storage_class.yaml
kubectl apply -f ./pv/persistentvolume.yaml
helm install -f values.yaml liveflow apache-airflow/airflow --namespace airflow --debug --timeout 20m0s
