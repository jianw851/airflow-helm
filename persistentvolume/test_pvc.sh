kubectl apply -f ./dags_sc.yaml
kubectl apply -f ./dags_pv.yaml
kubectl apply -f ./dags_pvc.yaml
kubectl apply -f ./workers_sc.yaml
kubectl apply -f ./workers_pv.yaml
kubectl apply -f ./workers_pvc.yaml
kubectl apply -f ./redis_sc.yaml
kubectl apply -f ./redis_pv.yaml
kubectl apply -f ./redis_pvc.yaml
