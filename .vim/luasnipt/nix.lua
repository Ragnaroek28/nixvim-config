local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

local snippets = {
    s("newmodule", fmta(
        [[
    _: {
        flake.modules.nixvim.<> = <>;
    }
    ]],
        {
            i(1, "modulename"),  -- erster Platzhalter: Modulname
            i(2, "config"),      -- zweiter Platzhalter: Config-Inhalt
        }
    )),
}

return snippets
