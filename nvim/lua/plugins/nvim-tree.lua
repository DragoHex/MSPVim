return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			update_focused_file = {
				enable = true,
				-- Un-comment to set the active dir as cwd
				-- update_cwd = true,
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
			},
		})
	end,
}
