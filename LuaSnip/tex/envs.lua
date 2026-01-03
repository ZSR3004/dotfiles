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

return {

  s({trig="ii", dscr="Creates a math mode environment."},
    fmta (
      [[
        $<>$
      ]],
      {i(1)}
    )
  ),

  s({trig="bg", dscr="Creates an LaTeX environment."},
    fmta (
      [[
        \begin{<>}
          <>
        \end{<>}
      ]],
      {i(1), i(0), rep(1)}
    )
  ),

  s({trig="mm", dscr="Creates an align/equation environment."},
    fmta (
      [[
        \begin{align*}
          <>
        \end{align*}
      ]],
      {i(0)}
    )
  ),

  s({trig="en", dscr="Creates an enumerate environment."},
    fmta (
      [[
        \begin{enumerate}
          \item
        \end{enumerate}
      ]],
      {}
    )
  ),

  s({trig="en", dscr="Creates an enumerate environment."},
    fmta (
      [[
        \begin{enumerate}
          \item[$(\Rightarrow)$] <>
          \item[$(\Leftarrow)$] <>
        \end{enumerate}
      ]],
      {i(1), i(2)}
    )
  ),
}
