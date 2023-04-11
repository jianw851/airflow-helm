kubectl config set-context --current --namespace airflow
helm uninstall liveflow apache-airflow/airflow --namespace airflow --debug
kubectl delete job --all
kubectl delete -f airflow-extra-env-variables.yaml
kubectl delete -f ./persistentvolume/logs_pvc.yaml
kubectl delete -f ./persistentvolume/workers_pvc.yaml
kubectl delete -f ./persistentvolume/dags_pvc.yaml
kubectl patch pv airflow-workers-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete -f ./persistentvolume/workers_pv.yaml
kubectl patch pv airflow-logs-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete -f ./persistentvolume/logs_pv.yaml
kubectl patch pv airflow-dags-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete -f ./persistentvolume/dags_pv.yaml
kubectl delete -f ./persistentvolume/dags_sc.yaml
kubectl delete -f ./persistentvolume/workers_sc.yaml
kubectl delete -f ./persistentvolume/logs_sc.yaml
mysql -h 10.103.129.116 -u jwang -p < reset_db.sql
