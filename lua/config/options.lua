local vim = vim

-- set number
vim.o.nu = true
vim.o.rnu = true

-- idk
vim.o.timeoutlen = 300
vim.o.list = true
vim.o.fillchars = "eob: "

-- Border
vim.o.winborder = "rounded"

-- sign
vim.o.signcolumn = "yes"
vim.opt.colorcolumn = "85"

-- true color
vim.o.termguicolors = true

-- No wrap
vim.o.wrap = false
vim.o.spell = false

-- dark | batman
vim.o.background = "dark"

-- no mouse in my table
vim.o.mouse = ""
vim.o.cursorline = true

-- hlcase
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.clipboard = "unnamedplus"

vim.o.confirm = true

vim.o.scrolloff = 8

-- Undo
vim.o.backup = false
vim.o.undofile = true
vim.o.undolevels = 10000
vim.o.swapfile = false
vim.o.breakindent = true

-- Status line
-- vim.o.statusline = "%<%f %h%m%r%=%{FugitiveStatusline()}    %-14.(%l,%c%V%) %P"

-- Indent
vim.cmd("filetype plugin indent on")
vim.o.smartindent = true
vim.o.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Netwr
vim.g.netrw_keepdir = 0
vim.g.have_nerd_font = true
vim.g.netrw_fastbrowse = 2

-- Decrease update time
vim.o.updatetime = 250

vim.o.wildmenu = true
vim.o.wildmode = "longest:full,full"
vim.opt.path:append({ "**" })
