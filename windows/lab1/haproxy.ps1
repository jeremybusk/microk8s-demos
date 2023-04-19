helm add haproxytech https://haproxytech.github.io/helm-charts
helm repo update
helm upgrade --install main haproxytech/kubernetes-ingress -f values.yaml --set controller.kind=DaemonSet
