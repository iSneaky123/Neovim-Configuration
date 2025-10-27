vim.g.mapleader = " "

local v = vim.opt

-- UI config
v.number = true
v.showmode = false
v.termguicolors = true

-- Tabs
v.shiftwidth = 4
v.tabstop = 4
v.softtabstop = 4
v.expandtab = true

-- Using system clipboard and mouse
v.clipboard = "unnamedplus"
v.completeopt = {'menu', 'menuone', 'noselect'}
v.mouse = 'a'

-- Searching
v.incsearch = true
v.hlsearch = false
v.ignorecase = true
v.smartcase = true
