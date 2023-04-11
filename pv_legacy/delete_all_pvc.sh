kubectl patch pvc logs-liveflow-worker-0 -p '{"metadata":{"finalizers":null}}'
kubectl delete pvc logs-liveflow-worker-0
kubectl patch pvc redis-db-liveflow-redis-0 -p '{"metadata":{"finalizers":null}}'
kubectl delete pvc redis-db-liveflow-redis-0
