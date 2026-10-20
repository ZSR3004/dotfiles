local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local t = ls.text_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

ls.add_snippets("sml",{

  s({trig="nimp",
     dscr='raise Fail "not implemented"',
     snippetType="autosnippet"},
     {t'raise Fail "not implemented"'}
  ),

  s({trig = "fnc",
     dscr = "Placeholder functional",
     snippetType = "autosnippet"},
     fmt(
       [[
       {}.{} (fn _ => {}) {}
       ]],
       {i(1, "List"), i(2, "map"), i(3, "true"), i(4, "xs")}
     )
  ),

})
