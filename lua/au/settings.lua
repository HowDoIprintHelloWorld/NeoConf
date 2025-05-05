
vim.cmd("setlocal spell spelllang=en_us")

vim.opt.termguicolors = true -- required for bufferline
vim.cmd.colorscheme("tokyonight")

vim.opt.nu = true -- show line numbers

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = true

vim.g.mapleader = " "

vim.diagnostic.config({
  virtual_text = true;
})
