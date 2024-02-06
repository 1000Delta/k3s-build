build:
# set the permissions for shell scripts
	chmod +x ./server_init_cluster.sh
	chmod +x ./get_token.sh
	chmod +x ./get_kubeconfig.sh

init-cluster:
	@./server_init_cluster.sh && ./get_token.sh

kubeconfig:
	@./get_kubeconfig.sh

