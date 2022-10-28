POSTGRES_POD_NAME=$(kubectl get pod -l app=postgres -o jsonpath="{.items[0].metadata.name}")
