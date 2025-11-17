vim.g.have_nerd_font = false

-- Make line numbers default
vim.o.number = true
vim.o.relativenumber = true

-- border design
vim.opt.winborder = "rounded"

-- ruler
vim.o.ruler = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = ""

-- syntax
vim.cmd("syntax on")

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false
vim.o.showcmd = true

--cmdheight
vim.opt.cmdheight = 1

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undolevels = 10000

-- indent
vim.cmd([[filetype plugin indent on]])
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

vim.opt.clipboard = "unnamedplus" -- Use system clipboard

-- Keep signcolumn on by default
vim.o.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

vim.o.list = true

vim.opt.listchars = {
	tab = "  ", -- default tab symbol
	trail = "-", -- default trailing space symbol
	extends = ">", -- when line extends
	precedes = "<", -- when text precedes screen
	eol = " ", -- end-of-line symbol
}

-- Preview substitutions live, as you type!
vim.o.inccommand = "nosplit"

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 8

vim.o.confirm = true

vim.opt.colorcolumn = "85"

--By nerdtreee
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

--fillchars
vim.opt.fillchars = {
	foldopen = "",
	foldclose = "",
	fold = " ",
	foldsep = " ",
	diff = "╱",
	eob = " ",
}

--disable barbar
vim.g.barbar_auto_setup = false

-- status Line
vim.o.statusline = "  %f %r %m %= %{&filetype}   %3l:%-2c  %P  "

vim.opt.laststatus = 2

vim.o.showtabline = 2

vim.opt.shortmess:append("W") -- no "written" messages
