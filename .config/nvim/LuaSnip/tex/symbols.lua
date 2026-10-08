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

  s({trig="inv", dscr="Raise to -1.", snippetType="autosnippet", condition=in_mathzone},
    fmta (
      [[
       {<>}^{-1}<>
      ]],
      {i(1), i(0)}
    )
  ),

  s({trig="mb", dscr="Creates set brackets.", snippetType="autosnippet", condition=in_mathzone},
    fmta (
      [[
        \{ <> \}
      ]],
      {i(1)}
    )
  ),

  s({trig="mid", dscr="Creates a divides bar.", snippetType="autosnippet", condition=in_mathzone},
    fmta (
      [[
        \mid
      ]],
      {}
    )
  ),

  s({trig="mb", dscr="Creates set brackets.", snippetType="autosnippet", condition=in_mathzone},
    fmta (
      [[
        \{ <> \}
      ]],
      {i(1)}
    )
  ),

  s({trig="es", dscr="Empty set.", snippetType="autosnippet", condition=in_mathzone},
    fmta (
      [[
        \varnothing
      ]],
      {}
    )
  ),

  s({trig="ff", dscr="Fraction.", snippetType="autosnippet", condition=in_mathzone},
    fmta (
      [[
        \frac{<>}{<>}
      ]],
      {i(1), i(2)}
    )
  ),

  s({trig="rar", dscr="Simple right arrow.", snippetType="autosnippet", condition=in_mathzone},
    fmta (
      [[
        \rightarrow
      ]],
      {}
    )
  ),

  s({trig="lar", dscr="Simple left arrow.", snippetType="autosnippet", condition=in_mathzone},
    fmta (
      [[
        \leftarrow
      ]],
      {}
    )
  ),

  s({trig="imp", dscr="Implication arrow.", snippetType="autosnippet", condition=in_mathzone},
    fmta (
      [[
        \implies
      ]],
      {}
    )
  ),

  s({trig="simp", dscr="Implication text.", snippetType="autosnippet", condition=in_mathzone},
    fmta (
      [[
        \text{ implies }
      ]],
      {}
    )
  ),

  s({trig="bij", dscr="Bimplication arrow.", snippetType="autosnippet", condition=in_mathzone},
    fmta (
      [[
        \iff
      ]],
      {}
    )
  ),

  s({trig="sbij", dscr="Bimplication text.", snippetType="autosnippet", condition=in_mathzone},
    fmta (
      [[
        \text{ implies }
      ]],
      {}
    )
  ),




}
