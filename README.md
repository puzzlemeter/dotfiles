## INTRODUCTION

#### Plugin Manager

lazy vim

#### Theme

Currently using

- [tokyonight](https://github.com/folke/tokyonight.nvim)

<br>

#### Font

use Hack Nerd Font Mono. (Configuration written in .alacritty.yml)

## QUICK INSTALL

#### OSX & Linux setup

`brew install neovim`

```
cd $HOME

git clone <THIS REPOSITORY>
./dotfiles/symlink.sh
```

```
cd dotfiles
./install.sh
```

### update git config

git config --list

git config --global user.name "YOUR NAME"
git config --global user.email "YOUR EMAIL"

## Required

Since alacritty not support ligature, I dont't use fira code anymore.

```
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
```

### hammerspoon

`brew cask install hammerspoon`

`~/.hammerspoon/init.lua`

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

### starship

use starship as prompt

```zsh/.zshrc
eval "$(starship init zsh)"
```

```bash/.bashrc
eval "$(starship init bash)"
```

### font

```
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
```

### not in use

Because Starship is more flexible.

- [powerlevel 10k](https://github.com/romkatv/powerlevel10k)
- [prezto](https://github.com/sorin-ionescu/prezto)
- [prezto-contrib](https://github.com/belak/prezto-contrib)
- [spaceship](https://github.com/denysdovhan/spaceship-prompt)
