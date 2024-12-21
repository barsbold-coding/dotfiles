local o = vim.opt
local keycode = vim.keycode

vim.g.mapleader = keycode'<space>'

-- o.statuscolumn = "%s%#AbsoluteColumn#%l%1*│%r "

local options = {
	hlsearch = true,
	ignorecase = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	termguicolors = true,
	undofile = true,
	updatetime = 700,
	expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = true,
  number = true,
  relativenumber = true,
  signcolumn = 'yes',
  scrolloff = 8,
  mouse='',
}

for k, v in pairs(options) do
  o[k] = v
end

vim.cmd[[set colorcolumn=72]]
vim.cmd [[
  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd = 
  augroup end
]]
