local loader = require('luasnip.loaders.from_snipmate')
-- local ls = require('luasnip')
-- local s = ls.snippet
-- local t = ls.text_node
-- local i = ls.insert_node

loader.load({ paths = "~/.config/nvim/lua/snippets" })

-- ls.add_snippets('c', {
--   s('print', {
--     t('printf("'),
--     i(1),
--     t(' = %d\\n", '),
--     i(2),
--     t(');'),
--   }),
--   s('fori', {
--     t('for (int i = 0; i < '),
--     i(1),
--     t('; ++i) {'),
--     t(''),
--     t('\t'),
--     t(''),
--     i(2),
--     t('}'),
--   }),
-- })

-- ls.add_snippets('swift', {
--   s('if', {
--     t("if "),
--     i(1),
--     t(" {"),
--     t(""),
--     i(2),
--     t("}")
--   }),

--   s('ifl', {
--     t('if let '),
--     i(1),
--     t(' = '),
--     i(2),
--     t(' {'),
--     t(''),
--     i(3),
--     t(''),
--     t('}'),
--   }),
-- })
