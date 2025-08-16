
is_arm64() {
  test "$(uname -m)" = "arm64"
}
# TODO refactor to intel mac uname and add windows ver
is_not_arm64() {
  test "$(uname -m)" != "arm64"
}

if is_arm64; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  local homebrew_bin="$HOME/homebrew/bin"
fi

# if is_not_arm64; then
#   # version manager
#   source /usr/local/opt/asdf/libexec/asdf.sh
# fi
