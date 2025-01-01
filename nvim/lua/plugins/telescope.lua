return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{
				"nvim-telescope/telescope-live-grep-args.nvim",
			},
		},
		config = function()
			require("telescope").load_extension("live_grep_args")
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local actions = require("telescope.actions")
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				defaults = {
					path_display = { "truncate " },
					mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous, -- move to prev result
							["<C-j>"] = actions.move_selection_next, -- move to next result
							-- ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						},
					},
				},
			})

			-- list all the errors for a file in a telescope window
			vim.api.nvim_create_user_command("TelescopeDiagnosticsErrors", function()
				require("telescope.builtin").diagnostics({
					severity = vim.diagnostic.severity.ERROR,
					prompt_title = "Error Diagnostics", -- Custom title
					results_title = "Errors Only", -- Custom title for results
				})
			end, {})

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>de", "<cmd>TelescopeDiagnosticsErrors<CR>", {})
			vim.keymap.set("n", "<leader>fe", "<cmd>Telescope diagnostics<CR>", {})
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
			vim.keymap.set(
				"n",
				"<leader>fa",
				require("telescope").extensions.live_grep_args.live_grep_args,
				{ noremap = true }
			)

			require("telescope").load_extension("ui-select")
		end,
	},
}
