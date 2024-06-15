return {
	{
		"akinsho/toggleterm.nvim",
		config = function()
			require("toggleterm").setup({})
			function _G.set_terminal_keymaps()
				local opts = { buffer = 0 }
				-- vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
				vim.keymap.set("t", "<C-t>", [[<Cmd>ToggleTerm<CR>]], opts)
				vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
				vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
				vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
				vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
				vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
				vim.keymap.set("t", "<C-q>", [[<Cmd>TermExec cmd=<C-c>exit<CR>]])
			end

			-- if you only want these mappings for toggle term use term://*toggleterm#* instead
			vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
			vim.api.nvim_set_keymap("n", "<leader>tt", [[<Cmd>ToggleTerm<CR>]], { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>tv", [[<Cmd>ToggleTerm direction=vertical size=60<CR>]], { noremap = true, silent = true })

			local Terminal = require("toggleterm.terminal").Terminal

			-- floating terminal
			local floatingterminal = Terminal:new({
				dir = "git_dir",
				direction = "float",
				float_opts = {
					border = "double",
				},
				-- function to run on opening the terminal
				on_open = function(term)
					vim.cmd("startinsert!")
				end,
				-- function to run on closing the terminal
				on_close = function(term)
					vim.cmd("startinsert!")
				end,
			})
			function _floating_terminal_toggle()
				floatingterminal:toggle()
			end
			vim.api.nvim_set_keymap(
				"n",
				"<leader>tf",
				"<cmd> lua _floating_terminal_toggle()<CR>",
				{ noremap = true, silent = true }
			)

			-- lazygit floating window
			local lazygit = Terminal:new({
				cmd = "lazygit",
				dir = "git_dir",
				direction = "float",
				float_opts = {
					border = "double",
				},
				-- function to run on opening the terminal
				on_open = function(term)
					vim.cmd("startinsert!")
					vim.api.nvim_buf_set_keymap(
						term.bufnr,
						"n",
						"q",
						"<cmd>close<CR>",
						{ noremap = true, silent = true }
					)
				end,
				-- function to run on closing the terminal
				on_close = function(term)
					vim.cmd("startinsert!")
				end,
			})

			function _lazygit_toggle()
				lazygit:toggle()
			end

			vim.api.nvim_set_keymap(
				"n",
				"<leader>tg",
				"<cmd>lua _lazygit_toggle()<CR>",
				{ noremap = true, silent = true }
			)
		end,
	},
}
