kubectl create namespace argocd
kubectl create namespace dev
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.14.4/manifests/ha/install.yaml
kubectl apply -f base/applicationset.yaml
