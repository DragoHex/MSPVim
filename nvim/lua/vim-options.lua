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
vim.keymap.set("n", "<leader>e", ":lua vim.diagnostic.open_float(0, {scope=\"line\", border=\"rounded\"})<CR>")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true

vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<cr>", { silent = true, noremap = true })
vim.api.nvim_set_option("clipboard", "unnamed")
