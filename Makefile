build:
# set the permissions for shell scripts
	chmod +x ./server_init_cluster.sh
	chmod +x ./get_token.sh
	chmod +x ./get_kubeconfig.sh
	chmod +x ./cilium_install.sh

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
