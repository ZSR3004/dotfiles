local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("enum", {
    t({"\\begin{enumerate}", "\t"}),
    i(1, "\\item "),
    t({"", "\\end{enumerate}"}),
  }),
}
