set -x
set -eo pipefail

export POSTGRES_POD_NAME=$(kubectl get pod -l app=postgres -o jsonpath="{.items[0].metadata.name}")
export alias psql='kubectl exec -it $POSTGRES_POD_NAME -- psql'

