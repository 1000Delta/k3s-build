### copy from https://get.k3s.io
# --- helper functions for logs ---
info() {
  echo '[INFO] ' "$@"
}
warn() {
  echo '[WARN] ' "$@" >&2
}
fatal() {
  echo '[ERROR] ' "$@" >&2
  exit 1
}

# echo value and return got value
# $1 is key, $2 is value
echo_get_value() {
  name=$1
  value=${!1}
  info current $name: $value
  read -p "$name(empty to use current): " new_value
  # if not empty, return new value
  if [ -n "$new_value" ]; then
    value=$new_value
  fi
  eval $1=$value
}
