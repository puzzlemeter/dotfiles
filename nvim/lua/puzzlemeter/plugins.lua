vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
use "tpope/vim-fugitive"
use "airblade/vim-gitgutter"

-- styles
use 'navarasu/onedark.nvim'
use 'sainnhe/sonokai'
use({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7', })
use 'vim-airline/vim-airline'
use 'vim-airline/vim-airline-themes'

-- filer
use 'nvim-tree/nvim-web-devicons'
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require("nvim-tree").setup {}
  end
}

-- finder
use { 'junegunn/fzf', run = ":call fzf#install()" }
use { 'junegunn/fzf.vim' }

-- lsp
use ({'neoclide/coc.nvim', tag = 'release'})

-- scroll
use 'yuttie/comfortable-motion.vim'

-- commentout
use 'tpope/vim-commentary'

-- bracket deletion, modification
use 'tpope/vim-surround'
use 'jiangmiao/auto-pairs'

end)
