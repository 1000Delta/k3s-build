build:
# set the permissions for shell scripts
	chmod +x ./*.sh

init-cluster:
	./server_init_cluster.sh $(NODE_IP) && \
	./cilium_install.sh && \
	./get_token.sh

delete-cluster:
	k3s-killall.sh && k3s-uninstall.sh

get-token:
	./get_token.sh

get-kubeconfig:
	./get_kubeconfig.sh

status-server:
	systemctl status k3s

status-agent:
	systemctl status k3s-agent

test:
	./util_test.sh

gateway:
	kubectl apply -f ./traefik/ingressroute/
