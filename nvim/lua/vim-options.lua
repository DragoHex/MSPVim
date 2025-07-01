-- vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nowrap")
vim.g.mapleader = " "

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Navigate tabs
vim.keymap.set("n", "<leader>bp", ":bp<CR>")
vim.keymap.set("n", "<leader>bn", ":bn<CR>")
vim.keymap.set("n", "<leader>bq", ":bd<CR>")

-- open diagnostics in floating window
vim.keymap.set(
	"n",
	"<leader>e",
	':lua vim.diagnostic.open_float(0, {scope="line", border="rounded"})<CR>',
	{ silent = true }
)

-- copy file paths
vim.keymap.set("n", "<leader>cp", ":CpPath<CR>")
vim.keymap.set("n", "<leader>cr", ":CpRelPath<CR>")
vim.keymap.set("n", "<leader>cf", ":CpFileName<CR>")
vim.keymap.set("v", "<leader>cr", function()
	local file = vim.fn.expand("%") -- relative path
	local start_line = vim.fn.line("v")
	local end_line = vim.fn.line(".")

	-- normalize order
	if start_line > end_line then
		start_line, end_line = end_line, start_line
	end

	local output = string.format("%s:%d-%d", file, start_line, end_line)
	vim.fn.setreg("+", output)
	vim.notify("Copied: " .. output)
end, { desc = "Copy relative path with line range", silent = true })

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true

vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<cr>", { silent = true, noremap = true })
vim.api.nvim_set_option("clipboard", "unnamed")
