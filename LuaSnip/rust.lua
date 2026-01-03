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

  s({trig="fn", dscr="Creates a not-implemented function."},
    fmta (
      [[
        fn <>(<>) ->> <> {
          todo!()
        }

      ]],
      {i(1, "function_name"), i(2, "params"), i(3, "returns")}
    )
  ),

  s({trig="md", dscr="Creates a not-implemented method."},
    fmta (
      [[
        fn <>(&self, <>) ->> <> {
          todo!()
        }

      ]],
      {i(1, "method_name"), i(2, "params"), i(3, "returns")}
    )
  ),

}
