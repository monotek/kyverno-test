# kyverno-test

setups kind cluster with:

* metrics-server
* kube-prometehus-stack
* kyverno
* kyverno policy reporter
* some [kyverno policies](https://github.com/monotek/kyverno-test/tree/main/policies)

## requirements

* [helm](https://github.com/helm/helm)
* [kind](https://github.com/kubernetes-sigs/kind/)
* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-kubectl-binary-with-curl-on-linux)
* [kustomize](https://github.com/kubernetes-sigs/kustomize)

## install

* `./install.sh`

## cleanup

* `kind delete cluster --name kyverno`
