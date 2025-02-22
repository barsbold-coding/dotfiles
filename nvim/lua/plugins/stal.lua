local buffer_ok, bufferline = pcall(require, 'bufferline')
local staline_ok, staline = pcall(require, 'staline')

if staline_ok then
  staline.setup({
    -- defaults = {
    --   branch_symbol = ' ',
    -- },
  })
end


if buffer_ok then
  bufferline.setup()
end

