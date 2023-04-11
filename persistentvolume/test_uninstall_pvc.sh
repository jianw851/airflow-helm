kubectl delete -f ./redis_pvc.yaml
kubectl delete -f ./workers_pvc.yaml
kubectl delete -f ./dags_pvc.yaml
kubectl patch pv airflow-workers-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete -f ./workers_pv.yaml
kubectl patch pv airflow-redis-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete -f ./redis_pv.yaml
kubectl patch pv airflow-dags-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete -f ./dags_pv.yaml
kubectl delete -f ./dags_sc.yaml
kubectl delete -f ./workers_sc.yaml
kubectl delete -f ./redis_sc.yaml
