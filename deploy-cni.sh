#!/bin/sh
# deploy calico cni to target cluster
set -ex

if [ -n "$1" ]
then
    kubeconfig_flag="--kubeconfig $1"
else
    kubeconfig_flag=""
fi

kubectl $kubeconfig_flag apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.30.3/manifests/calico.yaml
