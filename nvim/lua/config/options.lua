-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.relativenumber = false
-- I can still toggle relativenumber using <leader>uL

-- keep mac using pbcopy
if vim.loop.os_uname().sysname == "Darwin" then
  vim.g.clipboard = {
    name = "macOS-clipboard",
    copy = {
      ["+"] = "pbcopy",
      ["*"] = "pbcopy",
    },
    paste = {
      ["+"] = "pbpaste",
      ["*"] = "pbpaste",
    },
    cache_enabled = 0,
  }
  vim.g.python_host_prog = "$HOME/.asdf/shims/python"
  vim.g.python3_host_prog = "$HOME/.asdf/shims/python3"
end

-- copy relative file path
copy_relative_file_path = function()
  local absolute_file_path = vim.api.nvim_buf_get_name(0)
  local git_path = vim.fn.system("git rev-parse --show-toplevel")

  local relative_file_path = "/" .. string.sub(absolute_file_path, git_path:len() + 1)
  if vim.loop.os_uname().sysname == "Darwin" then
    local copy_command = "echo " .. '".' .. relative_file_path .. '"' .. " | pbcopy"
    vim.fn.system(copy_command)
  else
    require("osc52").copy(relative_file_path)
  end
  print("copied:" .. relative_file_path)
  return true
end
