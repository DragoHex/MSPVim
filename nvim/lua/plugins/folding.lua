return {
	{
		"kevinhwang91/nvim-ufo",
		dependencies = "kevinhwang91/promise-async",
		config = function()
			local ufo = require("ufo")
			vim.o.foldlevel = 99
			vim.o.foldlevelstart = 99
			vim.keymap.set("n", "zK", function()
				local winid = require("ufo").peekFoldedLinesUnderCursor()
				if not winid then
					-- choose one of coc.nvim and nvim lsp
					vim.fn.CocActionAsync("definitionHover") -- coc.nvim
					vim.lsp.buf.hover()
				end
			end)
			ufo.setup({
				provider_selector = function(bufnr, filetype, buftype)
					return { "lsp", "indent" }
				end,
			})
		end,
	},
	{
		"m4xshen/autoclose.nvim", -- for closing braces and indenting
		config = function()
			require("autoclose").setup()
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
}
