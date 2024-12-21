local function map(mode, l, r, opts)
  opts = opts or { noremap = true, silent = true }
  opts.buffer = bufnr
  vim.keymap.set(mode, l, r, opts)
end

local tmux_ok, nvim_tmux_nav = pcall(require, 'nvim-tmux-navigation')

if tmux_ok then
  nvim_tmux_nav.setup({
    disable_when_zoomed = true,
  })

  map('n', '<C-h>', nvim_tmux_nav.NvimTmuxNavigateLeft)
  map('n', '<C-t>', nvim_tmux_nav.NvimTmuxNavigateDown)
  map('n', '<C-n>', nvim_tmux_nav.NvimTmuxNavigateUp)
  map('n', '<C-s>', nvim_tmux_nav.NvimTmuxNavigateRight)
end
