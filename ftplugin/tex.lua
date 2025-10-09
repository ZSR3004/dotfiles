-- indentation
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true
vim.bo.softtabstop = 4

-- enable conceal for tex buffers
vim.opt_local.conceallevel = 2
require("conceal").generate_conceals()

-- -- local conceal
-- vim.opt_local.conceallevel = 2
-- local tex_conceals = {
--   ["\\sat"]     = "⊨",
--   ["\\unsat"]   = "⊭",
--   ["\\neg"]     = "¬",
--   ["\\not"]     = "¬",
--   ["\\land"]    = "∧",
--   ["\\lor"]     = "∨",
--   ["\\to"]      = "→",
--   ["\\iff"]     = "↔",
--   ["\\forall"]  = "∀",
--   ["\\exists"]  = "∃",
--   ["\\in"]      = "∈",
--   ["\\notin"]   = "∉",
--   ["\\subset"]  = "⊂",
--   ["\\subseteq"]= "⊆",
--   ["\\supset"]  = "⊃",
--   ["\\supseteq"]= "⊇",
--   ["\\cup"]     = "∪",
--   ["\\cap"]     = "∩",
--   ["\\setminus"]= "∖",
--   ["\\emptyset"]= "∅",
--   ["\\mathbb{N}"]= "ℕ",
--   ["\\mathbb{Z}"]= "ℤ",
--   ["\\mathbb{Q}"]= "ℚ",
--   ["\\mathbb{R}"]= "ℝ",
--   ["\\mathbb{C}"]= "ℂ",
--   ["\\rar"]     = "→",
--   ["\\lrar"]    = "↔",
--   ["\\ldots"]   = "…",
--   ["\\cdots"]   = "⋯",
--   ["\\vdots"]   = "⋮",
--   ["\\ddots"]   = "⋱",
--   -- Greek
--   ["\\ga"] = "α", ["\\gA"] = "Α",
--   ["\\gb"] = "β", ["\\gB"] = "Β",
--   ["\\gg"] = "γ", ["\\gG"] = "Γ",
--   ["\\gd"] = "δ", ["\\gD"] = "Δ",
--   ["\\ge"] = "ε", ["\\gE"] = "Ε",
--   ["\\gz"] = "ζ", ["\\gZ"] = "Ζ",
--   ["\\gh"] = "η", ["\\gH"] = "Η",
--   ["\\gt"] = "θ", ["\\gT"] = "Θ",
--   ["\\gi"] = "ι", ["\\gI"] = "Ι",
--   ["\\gk"] = "κ", ["\\gK"] = "Κ",
--   ["\\gl"] = "λ", ["\\gL"] = "Λ",
--   ["\\gm"] = "μ", ["\\gM"] = "Μ",
--   ["\\gn"] = "ν", ["\\gN"] = "Ν",
--   ["\\gx"] = "ξ", ["\\gX"] = "Ξ",
--   ["\\go"] = "ο", ["\\gO"] = "Ο",
--   ["\\gp"] = "π", ["\\gP"] = "Π",
--   ["\\gr"] = "ρ", ["\\gR"] = "Ρ",
--   ["\\gs"] = "σ", ["\\gS"] = "Σ",
--   ["\\gu"] = "υ", ["\\gU"] = "Υ",
--   ["\\gf"] = "φ", ["\\gF"] = "Φ",
--   ["\\gc"] = "χ", ["\\gC"] = "Χ",
--   ["\\gq"] = "ψ", ["\\gQ"] = "Ψ",
--   ["\\gw"] = "ω", ["\\gW"] = "Ω",
-- }

-- -- run conceal
-- local i = 0
-- for literal, char in pairs(tex_conceals) do
--   i = i + 1
--   local group = "ConcealTex" .. i
--   vim.cmd(string.format("syntax match %s /\\V%s/ conceal cchar=%s", group, literal, char))
--   vim.cmd(string.format("highlight default link %s Conceal", group))
-- end
