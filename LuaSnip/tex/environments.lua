local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local sn = ls.snippet_node

-- helper: recursive enumerate items
local function rec_items(args, _, _)
  -- stop recursion if blank
  if string.match(args[1][1], "^%s*$") then
    return sn(nil, { i(0) })
  end
  return sn(nil, {
    t({ "", "\t\\item " }),
    i(1),
    d(2, rec_items, { 1 }),
  })
end

return {
-- generic environment 
  s("beg", {
    t("\\begin{"),
    i(1, ""),
    t({ "}", "\t" }),
    i(2),
    t({ "", "\\end{" }),
    f(function(args)
      return args[1]
    end, { 1 }),
    t("}"),
    i(0),
  }),

  -- enumerate environment
  s("enum", {
    t({ "\\begin{enumerate}", "\t\\item " }),
    i(1),
    d(2, rec_items, { 1 }),
    t({ "", "\\end{enumerate}" }),
    i(0),
  }),

  -- iff proof environment
  s("iffpf", {
    t({ "\\begin{enumerate}", "\t\\item[$\\Rightarrow$)] " }),
    i(1),
    t({ "", "\t\\item[$\\Leftarrow$)] "}),
    i(2),
    t({ "", "\\end{enumerate}" }),
  }),
  -- proof environment
  s("pf", {
    t({ "\\begin{proof}", "\t" }),
    i(1),
    t({ "", "\\end{proof}" }),
    i(0),

  }),

  -- align* environment
  s("ali", {
    t({ "\\begin{align*}", "\t" }),
    i(1),
    t({ "", "\\end{align*}" }),
    i(0),
  }),
}
