local surround_ok, nsurround = pcall(require, 'nvim-surround')
local pairs_ok, npairs = pcall(require, 'nvim-autopairs')

if not surround_ok and not pairs_ok then
  return
end

npairs.setup({
  fast_wrap = {
    map = "<M-e>",
    chars = { "{", "[", "(", '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
    offset = 0, -- Offset from pattern match
    end_key = "$",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    highlight = "PmenuSel",
    highlight_grey = "LineNr",
  },
})

nsurround.setup()
