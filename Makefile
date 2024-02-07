build:
# set the permissions for shell scripts
	chmod +x ./server_init_cluster.sh
	chmod +x ./get_token.sh
	chmod +x ./get_kubeconfig.sh

init-cluster:
	./server_init_cluster.sh $(NODE_IP) && ./get_token.sh

get-token:
	./get_token.sh

get-kubeconfig:
	./get_kubeconfig.sh

status-server:
	systemctl status k3s

status-agent:
	systemctl status k3s-agent
