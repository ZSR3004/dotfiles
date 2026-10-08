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

in_mathzone = function()  -- math context detection
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {

  s({trig="ii", dscr="Math mode environment.", snippetType="autosnippet"},
    fmta (
      [[$<>$]],
      {i(1)}
    )
  ),

  s({trig="bg", dscr="Generic LaTeX environment.", snippetType="autosnippet"},
    fmta (
      [[
        \begin{<>}
            <>
        \end{<>}
      ]],
      {i(1), i(0), rep(1)}
    )
  ),

  s({trig="mm", dscr="Align/equation environment.", snippetType="autosnippet"},
    fmta (
      [[
        \begin{align*}
            <>
        \end{align*}
      ]],
      {i(0)}
    )
  ),

  s({trig="nm", dscr="Enumerate environment.", snippetType="autosnippet"},
    fmta (
      [[
        \begin{enumerate}
            \item <>
        \end{enumerate}
      ]],
      {i(1)}
    )
  ),

  s({trig="pf", dscr="Proof environment.", snippetType="autosnippet"},
    fmta (
      [[
        \begin{proof}
            <>
        \end{proof}
      ]],
      {i(1)}
    )
  ),

  s({trig="iffpf", dscr="Bijection proof.", snippetType="autosnippet"},
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
