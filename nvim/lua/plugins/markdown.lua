return {
	{
		"iamcco/markdown-preview.nvim",
		ft = { "markdown" },
		build = "cd app && npm install",
		config = function()
			vim.g.mkdp_auto_start = 0
			vim.g.mkdp_filetypes = { "markdown" }
		end,
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		opts = {
			file_types = { "markdown", "Avante" },
		},
		ft = { "markdown", "Avante" },
	},
	vim.api.nvim_set_keymap("n", "<leader>mp", [[<Cmd>MarkdownPreview<CR>]], { noremap = true, silent = true }),
}
