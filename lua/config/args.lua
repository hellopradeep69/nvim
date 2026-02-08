-- Replacement for harpoon | Max 4
local map = vim.keymap.set

-- List args
map("n", "<leader>h", "<cmd>args<bar>argded<cr>", { desc = "List args" })

-- Tag args
map("n", "<leader>H", "<cmd>$arge %<bar>argded<bar>args<cr>", { desc = "Tag args" })

map("n", "<C-h>", function()
	vim.cmd("silent! 1argument")
	-- vim.cmd("args")
end)

map("n", "<C-j>", function()
	vim.cmd("silent! 2argument")
	-- vim.cmd("args")
end)

map("n", "<C-k>", function()
	vim.cmd("silent! 3argument")
	-- vim.cmd("args")
end)

map("n", "<C-l>", function()
	vim.cmd("silent! 4argument")
	-- vim.cmd("args")
end)

map("n", "<leader>a", function()
	local buf = vim.api.nvim_create_buf(false, true)

	local win_id = vim.api.nvim_open_win(buf, true, {
		relative = "editor",
		row = math.floor((vim.o.lines - 13) / 2),
		col = math.floor((vim.o.columns - (vim.o.columns * 0.6)) / 2),
		width = 70,
		height = 10,
	})

	vim.api.nvim_set_option_value("relativenumber", false, { win = win_id })

	local arglist = vim.fn.argv()
	local to_read = type(arglist) == "table" and arglist or { arglist }
	vim.api.nvim_buf_set_lines(buf, 0, -1, false, to_read)

	local function Write()
		local to_write = vim.api.nvim_buf_get_lines(buf, 0, -1, true)
		vim.cmd("%argd")
		pcall(function()
			vim.cmd.arga(table.concat(to_write, " "))
		end)
		vim.api.nvim_buf_delete(buf, { force = true })
	end

	map("n", "<CR>", function()
		local f = vim.fn.getline(".")
		vim.api.nvim_buf_delete(buf, { force = true })
		vim.cmd.e(f)
	end, { buffer = buf, desc = "Go to file under cursor" })

	vim.api.nvim_create_autocmd("BufLeave", {
		buffer = buf,
		callback = function()
			Write()
		end,
	})

	map("n", "<esc>", Write, { buffer = buf, desc = "Update arglist" })
	map("n", "q", Write, { buffer = buf, desc = "Update arglist" })
	map("n", "<leader>a", Write, { buffer = buf, desc = "Update arglist" })
end, { desc = "Edit arglist" })
