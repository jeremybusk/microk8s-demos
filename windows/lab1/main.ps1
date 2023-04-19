$ErrorActionPreference = "Stop"
$NS="test-nginx"
kubectl create namespace $NS --dry-run=client -o yaml | kubectl apply -f -
kubectl config set-context --current --namespace=$NS
kubectl apply -f yaml 
