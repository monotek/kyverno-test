# kyverno-test

setups kind cluster with:

* metrics-server
* kube-prometehus-stack
* kyverno
* kyverno policy reporter
* some kyverno policies

## requirements

* [kind](https://github.com/kubernetes-sigs/kind/)
* [helm](https://github.com/helm/helm)
* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-kubectl-binary-with-curl-on-linux)
* [kustomize](https://github.com/kubernetes-sigs/kustomize)

## install

* `./install.sh`

## cleanup

* `kind deletel cluster --name kyverno`
