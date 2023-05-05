local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', { noremap = true, silent = true })
keymap('n', '<leader>f', '<cmd>NvimTreeFind<cr>', { noremap = true, silent = true })
keymap('n', '<leader>h', '<C-w>h', { noremap = true })
keymap('n', '<leader>j', '<C-w>j', { noremap = true })
keymap('n', '<leader>k', '<C-w>k', { noremap = true })
keymap('n', '<leader>l', '<C-w>l', { noremap = true })

-- scroll, seems like default is fine
-- keymap('n', '<C-d>', 'comfortable_motion#flick(100)', { noremap = true, silent = true })
-- keymap('n', '<C-u>', 'comfortable_motion#flick(-100)', { noremap = true, silent = true })
-- keymap('n', '<C-f>', 'comfortable_motion#flick(200)', { noremap = true, silent = true })
-- keymap('n', '<C-b>', 'comfortable_motion#flick(-200)', { noremap = true, silent = true })

-- buffer
keymap('n', '<C-n>', '<cmd>bnext<cr>', { noremap = true, silent = true })
keymap('n', '<C-p>', '<cmd>bprevious<cr>', { noremap = true, silent = true })
