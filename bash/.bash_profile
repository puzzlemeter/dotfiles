if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

### history
function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend
export HISTSIZE=9999
export HISTFILESIZE=10000
# without duplicate
#export HISTCONTROL=ignoredups
# 全履歴に渡り重複コマンドを削除します
export HISTCONTROL=erasedups
# ignore
export HISTIGNORE="history*:ls*:exit:source*:zsh"

# locale
export LC_ALL=ja_JP.UTF-8
export LANG=ja_JP.UTF-8

### from directory
if [ -d ~/.sh_path_and_aliases.d ]; then
  # . ~/.sh_path_and_aliases.d/.local_alias
  # . ~/.sh_path_and_aliases.d/.private_path
  . ~/.sh_path_and_aliases.d/.common_alias
  . ~/.sh_path_and_aliases.d/.public_path
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.bash ] && . ~/.config/tabtab/__tabtab.bash || true
export PATH="/usr/local/opt/avr-gcc@7/bin:$PATH"

# change 'ls' color
export CLICOLOR=1;
export LSCOLORS=gxfxcxdxbxegedabagacad;
export LS_COLORS="di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43:"

source ~/.git-completion.bash
source /usr/local/opt/asdf/libexec/asdf.sh
# source <(kubectl completion bash)
if test -f "~/.bash_step"; then
  source ~/.bash_step
fi
# fbr() {
#   local branches branch
#   branches=$(git branch -vv) &&
#   branch=$(echo "$branches" | fzf +m) &&
#   git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
# }

# fbrm() {
#   local branches branch
#   branches=$(git branch --all | grep -v HEAD) &&
#   branch=$(echo "$branches" |
#           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
#   git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
# }

# fssh() {
#     local sshLoginHost
#     sshLoginHost=`cat ~/.ssh/config | grep -i ^host | awk '{print $2}' | fzf`

#     if [ "$sshLoginHost" = "" ]; then
#         # ex) Ctrl-C.
#         return 1
#     fi

#     ssh ${sshLoginHost}
# }
