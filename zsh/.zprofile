
is_arm64() {
  test "$(uname -m)" = "arm64"
}
# TODO refactor to intel mac uname and add windows ver
is_not_arm64() {
  test "$(uname -m)" != "arm64"
}

if is_arm64; then
  eval "$($HOME/homebrew/bin/brew shellenv)"
  local homebrew_bin="$HOME/homebrew/bin"
  if ! cat /etc/paths | grep -q "${homebrew_bin}"; then
    echo "setting up homebrew binary path for gui apps"
    echo -e "${homebrew_bin}\n$(cat /etc/paths)" | sudo tee /etc/paths > /dev/null
  fi
fi

if is_not_arm64; then
  # version manager
  source /usr/local/opt/asdf/libexec/asdf.sh
fi
