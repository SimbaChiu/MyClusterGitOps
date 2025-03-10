# MyClusterGitOps
GitOps configuration for my Kubernetes cluster

# Init
## Create namespaces
```
kubectl create namespace argocd
kubectl create namespace dev
```

## Install ArgoCD
```
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.14.4/manifests/ha/install.yaml

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/<version>/manifests/ha/install.yaml
```

## Install ArgoCD Operator
```
curl -sL https://github.com/operator-framework/operator-lifecycle-manager/releases/download/v0.31.0/install.sh | bash -s v0.31.0

kubectl create -f https://operatorhub.io/install/argocd-operator.yaml

kubectl get csv -n operators
```
