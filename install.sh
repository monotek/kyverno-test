#!/bin/bash
#
# kyverno test
#

kind create cluster --name kyverno --wait 60s --image kindest/node:v1.23.3

helm repo add kyverno https://kyverno.github.io/kyverno/

helm repo add kyverno-policy-reporter https://kyverno.github.io/policy-reporter

helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo update

kubectl config set-context kind-kyverno

kubectl create ns kyverno

kubectl create ns kyverno

kubectl create ns monitoring

kubectl config set-context --current --namespace kyverno

helm -n kube-system upgrade -i metrics-server metrics-server/metrics-server --set args="{--kubelet-insecure-tls}"

helm -n monitoring upgrade -i kps prometheus-community/kube-prometheus-stack

helm -n kyverno upgrade -i kyverno kyverno/kyverno -f kyverno-helm.yaml

helm -n kyverno upgrade -i kyverno-policy-reporter kyverno-policy-reporter/policy-reporter  -f kyverno-policy-reporter-helm.yaml

kustomize build . | kubectl apply -f -
