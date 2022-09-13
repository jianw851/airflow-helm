helm uninstall liveflow apache-airflow/airflow --namespace airflow --debug
kubectl delete job --all
source ./pv/delete_all_pvc.sh
source ./pv/delete_all_pv.sh
source ./pv/delete_all_secret.sh
kubectl delete -f ./pv/storage_class.yaml
#mysql -h 10.103.129.116 -u jwang -p < reset_db.sql
