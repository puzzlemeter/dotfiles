ln -sfn $HOME/dotfiles/.alacritty.yml ./.alacritty.yml
ln -sfn $HOME/dotfiles/.sh_path_and_aliases.d/.public_path ./.public_path
ln -sfn $HOME/dotfiles/.sh_path_and_aliases.d/.common_alias ./.common_alias
ln -sfn $HOME/dotfiles/tmux/.tmux.conf ./.tmux.conf
ln -sfn $HOME/dotfiles/tmux/.tmux.conf.local ./.tmux.conf.local
ln -sfn $HOME/dotfiles/zsh/.zshrc ./.zshrc
ln -sfn $HOME/dotfiles/bash/.bash_profile ./.bash_profile
ln -sfn $HOME/dotfiles/git/.git-completion.bash ./.git-completion.bash
ln -sfn $HOME/dotfiles/git/.git-prompt.sh ./.git-prompt.sh
ln -sfn $HOME/dotfiles/git/.gitconfig ./.gitconfig
ln -sfn $HOME/dotfiles/git/.gitignore_global ./.gitignore_global

printf "\033[36mSymlink Completed.\033[0m\n"
printf "\n"

exit 0;
