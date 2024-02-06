echo 'K3S_TOKEN=' $K3S_TOKEN
read -p 'input token (empty to use K3S_TOKEN): ' token
if [ -n token ]; then
  token=$K3S_TOKEN
  echo 'using K3S_TOKEN'
fi

if [ -n "$1" ]; then
  node_ip=$1
  echo 'using node ip' $node_ip
  curl -sfL https://get.k3s.io | \
  sh -s - server \
  --node-ip $node_ip \
  --node-external-ip $node_ip \
  --server
else
  curl -sfL https://get.k3s.io | \
  sh -s - server \
  --server