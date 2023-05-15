printf "\033[33mChecking Start...\033[0m\n"

printf "\033[36mChecking Git install...\033[0m\n"
hash git 2>/dev/null || { echo >&2 "Require Git is not installed! Please install Git before you prefix config aix"; exit 1; }
git --version
printf "\033[36mChecking Git Completed!\033[0m\n"

echo "Clone Packer as Plugin Manager..."
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

printf "\033[33mChecking Completed!\033[0m\n"

printf "\033[36mCopy new files to the HOME PATH...\033[0m\n"

printf "\n"
echo " [- $HOME/"
echo "   |- .config/nvim [ -- NeoVim config -- ]"
echo "   |- .tmux.conf   [ -- Tmux config -- ]"
echo " -] "
printf "\n"

# copy gitconfig
cp $HOME/dotfiles/git/.gitconfig $HOME/.gitconfig

printf "\033[36mCopy Completed, Finish Install !\033[0m\n"
printf "\033[33mPlease Checking Completed!\033[0m\n"
printf "\n"
exit 0;
