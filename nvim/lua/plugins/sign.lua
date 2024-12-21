local ok, gitsigns = pcall(require, "gitsigns")
local map = require("keymapping")

if ok then
  gitsigns.setup({
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns
      map('n', '<leader>gl', gs.toggle_current_line_blame)
      map('n', '<leader>gh', gs.preview_hunk)
    end,
    attach_to_untracked = true,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
      delay = 1500,
      ignore_whitespace = false,
    },
    current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
  })
end
