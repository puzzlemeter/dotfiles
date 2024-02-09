-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

vim.keymap.set(
  "n",
  "<leader>cf",
  copy_relative_file_path,
  { desc = "Copy relative filepath", silent = true, noremap = true }
)

-- TODO specify the case
if vim.loop.os_uname().sysname ~= "Darwin" then
  vim.keymap.set(
    "n",
    "<leader>c",
    require("osc52").copy_operator,
    { desc = "yank operator", silent = true, expr = true }
  )
  vim.keymap.set("n", "yy", "<leader>c_", { desc = "Copy current line", silent = true, remap = true })
  vim.keymap.set("v", "<leader>c", require("osc52").copy_visual)
end
