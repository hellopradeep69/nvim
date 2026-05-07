-- Pack add builtin
vim.cmd("packadd nvim.undotree")
vim.cmd("packadd nvim.difftool")

require("vim._core.ui2").enable()

-- Number
vim.o.nu = true
vim.o.rnu = true

vim.o.confirm = true

vim.o.termguicolors = true
vim.o.splitright = true

vim.o.breakindent = true

-- Status line
-- vim.o.statusline = "%<%f %h%m%r%=%{FugitiveStatusline()}    %-14.(%l,%c%V%) %P"
vim.o.statusline = "%<%f %h%m%r%=%{get(b:,'gitsigns_status','')} %{FugitiveStatusline()}   %-14.(%l,%c%V%) %P "

vim.o.colorcolumn = "85"
vim.o.cursorline = true
vim.o.signcolumn = "yes"

-- Border
vim.o.winborder = "rounded"

vim.o.fillchars = "eob: "

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.mouse = ""

vim.o.scrolloff = 8

-- Indent
vim.cmd("filetype plugin indent on")
vim.cmd.syntax("on")
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.tabstop = 4
--
vim.o.swapfile = false
vim.o.undolevels = 10000
vim.o.undofile = true

vim.o.wrap = false
vim.o.spell = false

-- Netwr
vim.g.netrw_keepdir = 0
vim.g.have_nerd_font = true
vim.g.netrw_fastbrowse = 2

vim.opt.path:append({ "**" })
