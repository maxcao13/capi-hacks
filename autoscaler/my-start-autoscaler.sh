#!/bin/sh
cp ~/shared/cluster-autoscaler ~/capi-hacks/autoscaler/cluster-autoscaler
./cluster-autoscaler \
	--cloud-provider=clusterapi \
	--v=5 \
	--namespace=default \
	--max-nodes-total=30 \
	--scale-down-delay-after-add=0m \
	--scale-down-delay-after-delete=0m \
	--scale-down-delay-after-failure=0m \
	--scale-down-unneeded-time=10s \
	--max-node-provision-time=2m \
	--balance-similar-node-groups \
	--expander=random \
	--kube-client-qps=50 \
	--kube-client-burst=100 \
	--scan-interval=15s \
	--unremovable-node-recheck-timeout=0s \
	--kubeconfig=$HOME/.kube/kubemark-workload.kubeconfig \
	--cloud-config=$HOME/.kube/config
