{
    plugins = {
        luasnip = {
            enable = true;
            luaConfig.content = ''
                vim.cmd[[
                " Use Enter to expand the snippet
                imap <silent><expr> <CR> luasnip#expandable() ? '<Plug>luasnip-expand-snippet' : '<CR>'

                " Use Tab to jump through snippets
                imap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>' 
                smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

                " Use Shift-Tab to jump backwards through snippets
                imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
                smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
                ]]
            '';
            settings = {
                enable_autosnippets = true;
                store_selection_keys = "<Tab>";
            };
            filetypeExtend = {
                plaintex = [ "tex" "latex" ];
                latex = [ "plaintex" "tex" ];
            };
            fromLua = [
                {}
                { paths = ./luasnip; }
                { paths = "$HOME/.config/nvim-local/luasnip"; }
            ];
        };
        cmp_luasnip.enable = true;
    };
}
