-- NEOVIM API aliases
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt

-- General

-- UI

opt.number = true
opt.relativenumber = true
opt.hlsearch = false -- resalta los resultados de una busqueda anterior
opt.tabstop = 2 -- Es la cantidad de caracteres que ocupa tab, default = 8
opt.shiftwidth = 2 -- Espacio de identacion, por convencion se usa la misma que tabstop
opt.termguicolors= true
opt.completeopt={'menu','menuone','noselect'}
-- Para usar rip grep dentro de nvim
-- Tenes que tener instalado rip-grep en el SO 
-- https://github.com/BurntSushi/ripgrep
cmd [[set grepprg=rg\ --vimgrep\ --smart-case\ --follow]]


