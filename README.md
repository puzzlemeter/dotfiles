## INTRODUCTION

Cloned from YiJun's Vim

Planning to replace vim settings with https://vim-bootstrap.com/
Planning to replace vim filer with https://github.com/nvim-tree/nvim-tree.lua

#### Structure (WIP)

<br>

| File                  | annotation                 |
| --------------------- | -------------------------- |
| `.vimrc, sysinit.vim` | [ entry ]                  |
| `.base.vim`           | [ base universal config ]  |
| `.ignore.vim`         | [ ignore files ]           |
| `.init.vim`           | [ initialize config ]      |
| `.keymap.vim`         | [ Shortcut keymap config ] |
| `.plug.vim`           | [ plugin list ]            |
| `.plug.conf.vim`      | [ plugin config ]          |
| `.style.vim`          | [ colorscheme ]            |

<br>

#### Theme

[sonokai](https://vimcolorschemes.com/sainnhe/sonokai)

<br>

#### Font

**Aix** is my personal collection of font.

Find in `fonts` directory:

- `Aix.MacBookPro15.dfont` - Mac OSX
- `Aix.dfont` - Mac OSX
- `Aix.fon` - Windows 7, 8, 10
- `Aix.bdf` - Linux

<br>

## QUICK INSTALL

#### OSX & Linux setup

```
cd $HOME

git clone <THIS REPOSITORY>
./dotfiles/symlink.sh
```

```
cd dotfiles
./install.sh
```

start Vim and run `:PlugInstall` at first time

run `./update.sh` if vim settings changed.

<br>

#### Windows

> by default, I do not intend to merge it to Windows

> you can change the dotfile manual for need:

<br>

### update git config

git config --list

git config --global user.name "YOUR NAME"
git config --global user.email "YOUR EMAIL"

## Required

\+ Python3

\+ Ruby

\+ NodeJS

<br>

> Install compatibility packages

`pip3 install neovim`

`npm install -g neovim`

`npm install -g eslint`

`gem install neovim`

`gem install mdl`

`brew install jq`

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
