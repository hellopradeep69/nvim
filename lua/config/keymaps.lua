local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- better escape
map("i", "jj", "<Esc>", { desc = "Escape" })

-- Neotree Open
map("n", "<leader>e", "<CMD>Neotree filesystem reveal_force_cwd left toggle <CR>", { desc = "Open Neotree" })

-- Better focus window
map("n", "<leader>o", "<C-w><C-w>", { desc = "Escape" })

--Move it
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

--Open Lazy.vim
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "open Lazyvim" })

--Buffer Delete
map("n", "<leader>dd", "<cmd>bd<cr>", { desc = "Delete buffer" })

-- Break point
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", ";", ";<c-g>u")

-- Buffer Navi
map("n", "L", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })
map("n", "H", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
map("n", "<Tab>", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })

-- Buffer management
map("n", "<leader>bc", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })
map("n", "<leader>bp", "<Cmd>BufferPin<CR>", { desc = "Pin buffer" })
map("n", "<leader>bn", "<Cmd>BufferMoveNext<CR>", { desc = "Move buffer right" })
map("n", "<leader>bb", "<Cmd>BufferMovePrevious<CR>", { desc = "Move buffer left" })

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

-- Treej
map("n", "<leader>k", require("treesj").toggle, { desc = "Open bracket" })

-- qucik term
map("n", "<C-t>", ":!", { desc = "Quickie term" })

-- continue search
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Run code
map("n", "<leader>R", ":sil ! ~/.local/bin/topen.sh code %<CR>", { desc = "Run", silent = true })

map(
	"n",
	"<leader>ur",
	"<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
	{ desc = "Redraw / Clear hlsearch / Diff Update" }
)
