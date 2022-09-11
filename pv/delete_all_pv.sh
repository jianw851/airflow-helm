kubectl patch pv live1-airflow-worker-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete pv live1-airflow-worker-pv
kubectl patch pv live2-airflow-worker-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete pv live2-airflow-worker-pv
kubectl patch pv master-airflow-worker-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete pv master-airflow-worker-pv
kubectl patch pv live1-airflow-logs-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete pv live1-airflow-logs-pv
kubectl patch pv live2-airflow-logs-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete pv live2-airflow-logs-pv
kubectl patch pv master-airflow-logs-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete pv master-airflow-logs-pv
kubectl patch pv master-airflow-redis-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete pv master-airflow-redis-pv
kubectl patch pv live2-airflow-redis-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete pv live2-airflow-redis-pv
kubectl patch pv live1-airflow-redis-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete pv live1-airflow-redis-pv
kubectl patch pv master-airflow-git-sync-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete pv master-airflow-git-sync-pv
kubectl patch pv live2-airflow-git-sync-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete pv live2-airflow-git-sync-pv
kubectl patch pv live1-airflow-git-sync-pv -p '{"metadata":{"finalizers":null}}'
kubectl delete pv live1-airflow-git-sync-pv
