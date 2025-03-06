# MyClusterGitOps
GitOps configuration for my Kubernetes cluster

# Install ArgoCD Operator
```
curl -sL https://github.com/operator-framework/operator-lifecycle-manager/releases/download/v0.31.0/install.sh | bash -s v0.31.0

kubectl create -f https://operatorhub.io/install/argocd-operator.yaml

kubectl get csv -n operators
```

# Init cluster
```
kubectl create namespace dev
```
