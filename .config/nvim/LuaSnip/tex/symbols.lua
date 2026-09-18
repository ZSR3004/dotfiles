local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

in_mathzone = function()  
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end


-- Quantifiers: Exists, forall
-- Mathbb: Z, N, R, Q
-- subset, subseteq, in
-- set comp
-- absolute value bars
-- super/sub script
-- empty set
-- cup, cap
-- gcd
-- rightarrow, leftarrow
-- implies, iff
-- set diff
-- cong _ n
-- equivalence class [x]_n
-- 

return {

  s({trig="dv", dscr="Creates a divides bar.", snippetType="autosnippet"},
    fmta (
      [[
        \mid
      ]],
      {},
      {condition = in_mathzone}
    )
  ),

  s({trig="mb", dscr="Creates set brackets.", snippetType="autosnippet"},
    fmta (
      [[
        \{ <> \}
      ]],
      {i(1)},
      {condition = in_mathzone}
    )
  ),

  s({trig="dv", dscr="Creates a divides bar.", snippetType="autosnippet"},
    fmta (
      [[
        \mid
      ]],
      {},
      {condition = in_mathzone}
    )
  ),

  s({trig="mb", dscr="Creates set brackets.", snippetType="autosnippet"},
    fmta (
      [[
        \{ <> \}
      ]],
      {i(1)},
      {condition = in_mathzone}
    )
  ),

}
