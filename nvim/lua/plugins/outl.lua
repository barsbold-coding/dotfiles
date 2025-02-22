local outline_ok, outline = pcall(require, 'outline')
local map_ok, map = pcall(require, "keymapping")

if outline_ok then
  outline.setup({})
  if map_ok then
    map('n', '<leader>e', ':Outline<CR>', { noremap = true })
    vim.api.nvim_create_autocmd({"QuitPre"}, {
      callback = function() vim.cmd("OutlineClose") end,
    })
  end
end
