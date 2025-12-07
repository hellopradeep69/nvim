local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- better escape
map("i", "jj", "<Esc>", { desc = "Escape" })

-- Lex Open
map("n", "<leader>e", "<cmd>Lex<cr>", { desc = "Open Ex" })

-- Open OIl
map("n", "<leader>E", "<cmd>F<cr>", { desc = "Open oil" })

-- Better focus window
map("n", "<leader>o", "<C-w><C-w>", { desc = "Toggle win" })

--Move it
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

--Open Lazy.vim
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "open Lazyvim" })

--Buffer Delete
map("n", "<leader>dd", "<cmd>bd<cr>", { desc = "Delete buffer" })

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

-- Buffer Navi

-- Buffer management
map("n", "<leader>bd", ":ls<cr>:bd ", { desc = "Delete buffer" })

-- better indenting | okie i agree folke
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Better J
map("n", "J", "mzJ`z")

-- Qucikfix
map("n", "[q", vim.cmd.cprev, { desc = "Previous Quickfix" })
map("n", "]q", vim.cmd.cnext, { desc = "Next Quickfix" })

-- Don't copy to clipboard when deleting
map("n", "d", '"_d', opts)
map("n", "dd", '"_dd', opts)
map("n", "x", '"_x', opts)
map("v", "d", '"_d', opts)
map("v", "x", '"_x', opts)

-- better up and down
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

-- map("n", "<ESC>", ":nohlsearch<CR>", { desc = "clear search highlight" })
map("n", "<ESC>", " <Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR> ", { desc = "clear search highlight" })

map("i", "<C-l>", "<ESC>A", {})

-- Normal mode: <leader>sr opens :%s/
map("n", "<leader>r", ":%s/", { desc = "Search and Replace" })
map("n", "<leader>ba", ":enew<CR>", { desc = " New Buffer" })

-- Treej | Later
-- map("n", "<leader>k", require("treesj").toggle, { desc = "Open bracket" })

-- qucik term
map("n", "<C-t>", ":!", { desc = "Quickie term" })

-- continue search
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Run code
-- map("n", "<leader>R", ":sil ! ~/.local/bin/topen.sh code %<CR>", { desc = "Run", silent = true })
map("n", "<leader>R", ":sil ! ~/.local/bin/Win.sh -c<CR>", { desc = "Run", silent = true })

map(
	"n",
	"<leader>ur",
	"<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
	{ desc = "Redraw / Clear hlsearch / Diff Update" }
)

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pv", ":F<CR>", { desc = "Oil" })

map("n", "<leader>bf", function()
	Snacks.picker.buffers({ current = false, layout = { preview = false, preset = "select" } })
end, { desc = "Buffer" })

-- map("n", "<leader>fo", ":find **/", { desc = "Find" })
map("n", "<leader>fo", ":find ", { desc = "Find" })

-- Mason
map("n", "<leader>cm", "<cmd>Mason<cr>", { desc = "Mason" })

vim.keymap.set("n", "<leader>bl", ":ls<cr>:bd ", { desc = "list buffer" })

map("n", "<leader>pp", ":!zen-browser %<cr>", { desc = "preview html" })

-- Git
map("n", "<leader>gi", vim.cmd.Git, { desc = "Git fugitive" })
