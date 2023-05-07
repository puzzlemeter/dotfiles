## INTRODUCTION

Cloned from YiJun's Vim

Planning to replace vim settings with lua definitions.
Planning to replace vim filer with https://github.com/nvim-tree/nvim-tree.lua

#### Structure (WIP)

<br>

| File                            | annotation                 |
| ------------------------------- | -------------------------- |
| `init.lua`                      | [ entry ]                  |
| `lua/username/base.lua`         | [ base universal config ]  |
| `lua/username/keymaps.lua`      | [ Shortcut keymap config ] |
| `lua/username/plugins.lua`      | [ plugin list ]            |
| `lua/username/colorschemes.lua` | [ colorscheme config]      |
| `lua/username/coc.lua`          | [ coc lsp config]          |

<br>


#### Plugin Manager

[packer](https://github.com/wbthomason/packer.nvim)

use `:PackerCompile`, `:PackerSync`, `:PackerInstall`...

#### Theme

Currently using

- [sonokai](https://vimcolorschemes.com/sainnhe/sonokai)

Other options

- github-theme

- navarasu/onedark.nvim

<br>

#### Font

for nvim-web-devicons, use Hack Nerd Font Mono. (Configuration written in .alacritty.yml)

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

start NeoVim and run `:PackerInstall` at first time

##### coc lsp install

`:CocInstall coc-json coc-tsserver`

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
