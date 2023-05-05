# starship prompt
eval "$(starship init zsh)"

fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
autoload -Uz compinit && compinit

# change 'ls' color
export CLICOLOR=1;
export LSCOLORS=gxfxcxdxbxegedabagacad;
export LS_COLORS="di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43:"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

# **HISTORY**
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=1000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# 重複を記録しない
setopt hist_ignore_dups

setopt share_history

# HISTIGNORE
zshaddhistory() {
    local line=${1%%$'\n'}
    local cmd=${line%% *}

    # 以下の条件をすべて満たすものだけをヒストリに追加する
    # 4文字以下である
    # コマンド名の部分が l, ls, la, ll のいずれかである
    # コマンド名の部分が c, cd のいずれかである
    # コマンド名の部分が m, man のいずれかである
    [[ ${#line} -ge 5
        && ${cmd} != (l|l[sal])
        && ${cmd} != (c|cd)
        && ${cmd} != (m|man)
        && ${cmd} != (history)
        && ${cmd} != (exit)
        && ${cmd} != (source)
    ]]
}

# locale
export LC_ALL=ja_JP.UTF-8
export LANG=ja_JP.UTF-8

# ln -s ~/dotfiles/.sh_path_and_aliases.d/.common_alias ~/.common_alias
if [ -f ~/.common_alias ]; then
  source ~/.common_alias
else
  print "404: ~/.common_alias not found."
fi
# ln -s ~/dotfiles/.sh_path_and_aliases.d/.public_path ~/.public_path
if [ -f ~/.public_path ]; then
  source ~/.public_path
else
  print "404: ~/.public_path not found."
fi

# version manager
source /usr/local/opt/asdf/libexec/asdf.sh

# source <(kubectl completion zsh)
