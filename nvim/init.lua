local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

-- copy complete file path
vim.api.nvim_create_user_command("CpPath", function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

-- copy relative file path
vim.api.nvim_create_user_command("CpRelPath", function()
    local path = vim.fn.expand("%:.")
    vim.fn.setreg("+", path)
    vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

-- copy file name
vim.api.nvim_create_user_command("CpFileName", function()
    local file_name = vim.fn.expand("%:t")
    vim.fn.setreg("+", file_name)
    vim.notify('Copied "' .. file_name .. '" to the clipboard!')
end, {})

-- Source:
-- https://www.reddit.com/r/vim/comments/ufgrl8/comment/i6u81i4/?utm_source=share&utm_medium=web2x&context=3
vim.cmd([[
" Map key chord `jk` to <Esc>.
let g:esc_j_lasttime = 0
let g:esc_k_lasttime = 0
function! JKescape(key)
	if a:key=='j' | let g:esc_j_lasttime = reltimefloat(reltime()) | endif
	if a:key=='k' | let g:esc_k_lasttime = reltimefloat(reltime()) | endif
	let l:timediff = abs(g:esc_j_lasttime - g:esc_k_lasttime)
	return (l:timediff <= 0.10 && l:timediff >=0.001) ? "\b\e" : a:key
endfunction
inoremap <expr> j JKescape('j')
inoremap <expr> k JKescape('k')
]])
