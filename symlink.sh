ln -sfn $HOME/dev/dotfiles/nvim $HOME/.config/nvim
ln -sfn $HOME/dev/dotfiles/.alacritty.yml $HOME/.alacritty.yml
ln -sfn $HOME/dev/dotfiles/.sh_path_and_aliases.d/.common_alias $HOME/.common_alias
ln -sfn $HOME/dev/dotfiles/tmux/.tmux.conf $HOME/.tmux.conf
ln -sfn $HOME/dev/dotfiles/tmux/.tmux.conf.local $HOME/.tmux.conf.local
ln -sfn $HOME/dev/dotfiles/zsh/.zprofile $HOME/.zprofile
ln -sfn $HOME/dev/dotfiles/zsh/.zshrc $HOME/.zshrc
# bash profile not really tested
ln -sfn $HOME/dev/dotfiles/bash/.bash_profile $HOME/.bash_profile
ln -sfn $HOME/dev/dotfiles/bash/.bashrc $HOME/.bashrc
ln -sfn $HOME/dev/dotfiles/git/.git-completion.bash $HOME/.git-completion.bash
# .git-completion.zsh
ln -sfn $HOME/dev/dotfiles/git/_git $HOME/.zsh/_git
# not in use, use starship instead
# ln -sfn $HOME/dev/dotfiles/git/.git-prompt.sh ./.git-prompt.sh
ln -sfn $HOME/dev/dotfiles/git/.gitignore_global $HOME/.gitignore_global
ln -sfn $HOME/dev/dotfiles/starship/starship.toml $HOME/.config/starship.toml
ln -sfn $HOME/dev/dotfiles/ghostty/config $HOME/.config/ghostty/config

printf "\033[36mSymlink Completed.\033[0m\n"
printf "\n"

exit 0;
