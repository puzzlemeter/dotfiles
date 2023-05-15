local keymap = vim.keymap.set

-- Remap space as leader key
keymap("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')
keymap('n', '<leader>f', '<cmd>NvimTreeFind<cr>')
keymap('n', '<leader>h', '<C-w>h')
keymap('n', '<leader>j', '<C-w>j')
keymap('n', '<leader>k', '<C-w>k')
keymap('n', '<leader>l', '<C-w>l')

-- scroll, seems like default is fine
-- keymap('n', '<C-d>', 'comfortable_motion#flick(100)')
-- keymap('n', '<C-u>', 'comfortable_motion#flick(-100)')
-- keymap('n', '<C-f>', 'comfortable_motion#flick(200)')
-- keymap('n', '<C-b>', 'comfortable_motion#flick(-200)')

-- buffer
keymap('n', '<leader>b', '<cmd>Buffers<cr>')
keymap('n', '<C-k>', '<cmd>bnext<cr>')
keymap('n', '<C-j>', '<cmd>bprevious<cr>')
keymap('n', '<C-x>', '<cmd>bdelete<cr>')

-- show number
keymap('n', '<F12>', '<cmd>set invnumber<cr>')
-- Fast searcher
keymap('n', 'z,', '<cmd>FZF --no-mouse .<cr>')
-- cursor
keymap('i', 'jj', '<Esc>')
-- tab
keymap('n', '<leader>t', '<cmd>tabnew<cr>')
keymap('n', '<leader>th', '<cmd>tabnext<cr>')
keymap('n', '<leader>tl', '<cmd>tabprevious<cr>')
keymap('n', '<leader>tx', '<cmd>tabclose<cr>')
