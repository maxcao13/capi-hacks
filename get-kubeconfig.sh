#!/bin/sh
# write out the kubeconfig for the named kind cluster
# usage: get-kubeconfig <kind cluster name>
outfile="$HOME/.kube/$1.kubeconfig"
mkdir -p "$HOME/.kube"
kind get kubeconfig --name $1 > $outfile
sed -i -e "s/0.0.0.0/127.0.0.1/g" $outfile
echo "Wrote kubeconfig to $outfile"
