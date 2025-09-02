vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0
vim.g.netrw_sizestyle = "H"
vim.g.netrw_liststyle = 1
vim.g.netrw_winsize = 30
vim.g.netrw_list_hide = vim.fn["netrw_gitignore#Hide"]()
-- vim.g.netrw_hide = 1

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ruler = true
vim.opt.mouse = "a"
vim.opt.wildmenu = true
vim.opt.showmatch = true

vim.o.termguicolors = false

vim.keymap.set("n", "l", "<CR>:Lexplore<CR>")

