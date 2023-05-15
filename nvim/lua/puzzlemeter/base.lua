local opt = vim.opt

local options = {
-- Format
	nu = true,
	copyindent = true,
	preserveindent = true,
	tabstop = 2,
	shiftwidth = 2,
	softtabstop = 0,
	expandtab = false,
	autowrite = true,
	display = 'lastline',
-- Indentation
	ambiwidth = 'double',
	wrap = true,
	autoindent = true,
	smartindent = true,
	smarttab = true,
	linebreak = true,
	shiftround = true,
-- 分類 WIP
	encoding = "utf-8",
	fileencoding = "utf-8",
	incsearch = true,
	clipboard = "unnamedplus",
  showmode = false,
  ruler = true,
  cursorline = true,
  winaltkeys = 'no',
  termguicolors = true,
	undofile = true,
	title = true,
	-- backup = false,
	-- cmdheight = 2,
	-- completeopt = { "menuone", "noselect" },
	-- conceallevel = 0,
	-- hlsearch = true,
	-- ignorecase = true,
	-- mouse = "a",
	-- pumheight = 10,
	-- showtabline = 2,
	-- smartcase = true,
	-- swapfile = false,
	-- timeoutlen = 300,
	-- updatetime = 300,
	-- writebackup = false,
	-- shell = "fish",
	-- backupskip = { "/tmp/*", "/private/tmp/*" },
	-- number = true,
	-- relativenumber = false,
	-- numberwidth = 4,
	-- signcolumn = "yes",
	-- winblend = 0,
	-- wildoptions = "pum",
	-- pumblend = 5,
	-- background = "dark",
	-- scrolloff = 8,
	-- sidescrolloff = 8,
	-- guifont = "monospace:h17",
	-- splitbelow = false, -- オンのとき、ウィンドウを横分割すると新しいウィンドウはカレントウィンドウの下に開かれる
	-- splitright = false, -- オンのとき、ウィンドウを縦分割すると新しいウィンドウはカレントウィンドウの右に開かれる
}

opt.shortmess:append("c")

for k, v in pairs(options) do
	opt[k] = v
end
