ln -sfn $HOME/dotfiles/nvim $HOME/.config/nvim
ln -sfn $HOME/dotfiles/.alacritty.yml $HOME/.alacritty.yml
ln -sfn $HOME/dotfiles/.sh_path_and_aliases.d/.public_path $HOME/.public_path
ln -sfn $HOME/dotfiles/.sh_path_and_aliases.d/.common_alias $HOME/.common_alias
ln -sfn $HOME/dotfiles/tmux/.tmux.conf $HOME/.tmux.conf
ln -sfn $HOME/dotfiles/tmux/.tmux.conf.local $HOME/.tmux.conf.local
ln -sfn $HOME/dotfiles/zsh/.zprofile $HOME/.zprofile
ln -sfn $HOME/dotfiles/zsh/.zshrc $HOME/.zshrc
# bash profile not really tested
ln -sfn $HOME/dotfiles/bash/.bash_profile $HOME/.bash_profile
ln -sfn $HOME/dotfiles/bash/.bashrc $HOME/.bashrc
ln -sfn $HOME/dotfiles/git/.git-completion.bash $HOME/.git-completion.bash
# .git-completion.zsh
ln -sfn $HOME/dotfiles/git/_git $HOME/.zsh/_git
# not in use, use starship instead
# ln -sfn $HOME/dotfiles/git/.git-prompt.sh ./.git-prompt.sh
ln -sfn $HOME/dotfiles/git/.gitignore_global $HOME/.gitignore_global

printf "\033[36mSymlink Completed.\033[0m\n"
printf "\n"

exit 0;
