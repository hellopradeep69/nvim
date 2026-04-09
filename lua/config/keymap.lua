local map = vim.keymap.set

vim.g.mapleader = " "

-- Open Ex
map("n", "<leader>e", "<cmd>Lex<cr>", { desc = "open ex" })

-- quick termie
map({ "n", "v" }, "<C-t>", ":!", { desc = "quick termie" })

-- Open OIl
map("n", "<leader>E", "<cmd>F<cr>", { desc = "Open oil" })

--Move it
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

--Open Lazy.vim | TODO:
-- map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "open Lazyvim" })

-- Session
-- Add session
map("n", "<leader>sa", "<cmd>!ls ~/Sessions.vim/ |nl <cr>:mks! ~/Sessions.vim/", { desc = "Add session" })

-- view session
map("n", "<leader>sl", ":!ls ~/Sessions.vim/ | nl<cr>:so ~/Sessions.vim/", { desc = "View session" })

-- Del Sessions
map("n", "<leader>sx", ":!ls -1 ~/Sessions.vim/<cr>:!trash ~/Sessions.vim/", { desc = "Del session" })

-- Edit session
map("n", "<leader>se", function()
	require("oil").toggle_float("~/Sessions.vim/")
end, { desc = "Edit session" })

-- Break point
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", ";", ";<c-g>u")

-- better indenting | okie i agree folke
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Better J
map("n", "J", "mzJ`z")

-- Better yank
map({ "n", "v", "x" }, "gy", '"+y', { desc = "Yank to clipboard" })
map({ "n", "v", "x" }, "gp", '"+p', { desc = "paste from clipboard" })

-- Delete word to blackhole
map({ "n", "v" }, "d", '"_d')
map({ "n", "v" }, "x", '"_x')

-- better up and down
map("n", "<C-d>", "<C-d>zz", {})
map("n", "<C-u>", "<C-u>zz", {})

-- Diagnostic
map("n", "<leader>xq", vim.diagnostic.setqflist, { desc = "Diagnostic view" })
-- map("n", "<ESC>", ":nohlsearch<CR>", { desc = "clear search highlight" })
map("n", "<ESC>", " <Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR> ", { desc = "clear search highlight" })

-- Normal mode: <leader>sr opens :%s/
map("n", "<leader>r", ":%s/", { desc = "Search and Replace" })

-- continue search
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pv", ":F<CR>", { desc = "Oil" })

map("n", "<leader>fo", ":find ", { desc = "Find" })

vim.keymap.set("n", "<leader>bl", ":ls<cr>:bd ", { desc = "list buffer" })

-- map("n", "<leader>pp", "<cmd>LivePreview start <cr>", { desc = "preview html" })
map("n", "<leader>pp", ":sil !zen-browser %<cr>", { desc = "preview html" })

-- escape terminal
-- map("t", "<c-_>", "<c-\\><c-n>", {})

-- run
map("n", "<M-n>", function()
	vim.cmd("silent make")
	vim.cmd.cope()
end)
