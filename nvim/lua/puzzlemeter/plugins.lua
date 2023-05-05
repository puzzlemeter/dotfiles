vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
use "tpope/vim-fugitive"

-- styles
use 'navarasu/onedark.nvim'
use 'sainnhe/sonokai'
use({
  'projekt0n/github-nvim-theme', tag = 'v0.0.7',
  config = function()
    require('github-theme').setup({
    })

    vim.cmd('colorscheme github_dark')
  end
})
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

-- lsp
use ({'neoclide/coc.nvim', tag = 'release'})

-- scroll
use 'yuttie/comfortable-motion.vim'

end)
