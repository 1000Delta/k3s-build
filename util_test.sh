. ./util.sh

echo bbb | (
  test_val=aaa
  echo_get_value test_val
  # assert value as bbb
  info "new test_val:" $test_val
  if [ "$test_val" != "bbb" ]; then
    fatal "test_val should be bbb"
  fi
)
