# if have arg 1, set as node ip
if [ -n "$1" ]; then
  node_ip=$1
  curl -sfL https://get.k3s.io | \
  sh -s - server \
  --node-ip $node_ip \
  --node-external-ip $node_ip \
  --cluster-init
else
  curl -sfL https://get.k3s.io | \
  sh -s - server \
  --cluster-init
