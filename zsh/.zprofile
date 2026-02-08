
is_arm64() {
  test "$(uname -m)" = "arm64"
}
# TODO refactor to intel mac uname and add windows ver
is_not_arm64() {
  test "$(uname -m)" != "arm64"
}

if is_arm64; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# locale
export LC_ALL=ja_JP.UTF-8
export LANG=ja_JP.UTF-8

# if is_not_arm64; then
# fi
