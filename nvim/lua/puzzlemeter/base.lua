local opt = vim.opt

-- Format
opt.nu = true
opt.copyindent = true
opt.preserveindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 0
opt.expandtab = false
opt.autowrite = true
opt.display = 'lastline'

-- Indentation
opt.ambiwidth = 'double'
opt.wrap = true
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true
opt.linebreak = true
opt.shiftround = true

opt.showmode = false
opt.ruler = true
opt.cursorline = true
opt.winaltkeys = 'no'

opt.termguicolors = true


local options = {
	encoding = "utf-8",
	fileencoding = "utf-8",
	-- title = true,
	-- backup = false,
	-- clipboard = "unnamedplus",
	-- cmdheight = 2,
	-- completeopt = { "menuone", "noselect" },
	-- conceallevel = 0,
	-- hlsearch = true,
	-- ignorecase = true,
	-- mouse = "a",
	-- pumheight = 10,
	-- showmode = false,
	-- showtabline = 2,
	-- smartcase = true,
	-- smartindent = true,
	-- swapfile = false,
	-- termguicolors = true,
	-- timeoutlen = 300,
	undofile = true, -- ~/.local/share/nvim/undo
	-- updatetime = 300,
	-- writebackup = false,
	-- shell = "fish",
	-- backupskip = { "/tmp/*", "/private/tmp/*" },
	-- expandtab = true,
	-- shiftwidth = 2,
	-- tabstop = 2,
	-- cursorline = true,
	-- number = true,
	-- relativenumber = false,
	-- numberwidth = 4,
	-- signcolumn = "yes",
	-- wrap = false,
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
