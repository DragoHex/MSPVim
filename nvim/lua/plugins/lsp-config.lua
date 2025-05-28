return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"golangci_lint_ls",
					"gopls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				format = {
					enable = true,
					-- Put format options here
					-- NOTE: the value should be STRING!!
					defaultConfig = {
						indent_style = "space",
						indent_size = "2",
					},
				},
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
				cmd = { "gopls" },
				filetypes = { "go", "gomod", "gowork", "gotmpl" },
				settings = {
					gopls = {
						usePlaceholders = false,
						completeUnimported = true,
						analyses = {
							unusedparams = true,
						},
						matcher = "fuzzy",
					},
				},
			})
			lspconfig.golangci_lint_ls.setup({
				capabilities = capabilities,
			})

			-- Change the Diagnostic symbols in the sign column (gutter)
			local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
			for type, icon in pairs(signs) do
				local hl = "DiagnosticSign" .. type
				vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
			end
			-- Set border for LSP hover window
			vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
				border = "rounded", -- You can use "single", "double", "rounded", etc.
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "<leader>bd", "<cmd>Telescope lsp_definitions<CR>", {})
			-- vim.keymap.set("n", "<leader>bd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>br", "<cmd>Telescope lsp_references<CR>", {})
			-- vim.keymap.set("n", "<leader>br", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
	{
		"rmagatti/goto-preview", -- For quick goto preview
		config = function()
			local gotoprev = require("goto-preview")
			gotoprev.setup({
				default_mappings = true, -- Bind default mappings
			})
		end,
	},
	{
		"m4xshen/autoclose.nvim", -- for closing braces and indenting
		config = function()
			require("autoclose").setup()
		end,
	},
}
