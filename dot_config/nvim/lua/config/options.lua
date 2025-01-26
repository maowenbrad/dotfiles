-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.cmd([[highlight LineNr guifg=#6c7086]])

vim.cmd([[highlight CursorLineNr guifg=#cdd6f4]])

vim.cmd([[highlight LineNrAbove guifg=#eba0ac]])

vim.cmd([[highlight LineNrBelow guifg=#94e2d5]])

vim.cmd([[highlight Status_LineNr guifg=#6c7086]])

vim.cmd([[highlight Status_DivLine guibg=#1e1e2e guifg=#313244]])

vim.cmd([[set number]])

vim.cmd([[set relativenumber]])

vim.cmd([[set cursorline]])

vim.cmd([[set signcolumn=yes:1]])

vim.opt.statuscolumn = "%C%s%#Status_LineNr#%3.3l%* %-2.2r%#Status_DivLine#⏐%* "
