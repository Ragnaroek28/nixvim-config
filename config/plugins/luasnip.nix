{
  plugins = {
    luasnip = {
      enable = true;
      settings = {
        enable_autosnippets = true;
        store_selection_keys = "<Tab>";
        update_events = [
          "TextChanged"
          "TextChangedI"
        ];
      };
      filetypeExtend = {
        plaintex = [
          "tex"
          "latex"
        ];
        latex = [
          "plaintex"
          "tex"
        ];
        cpp = [
          "hpp"
          "cxx"
          "c"
          "h"
        ];
        c = [
          "cpp"
        ];
      };
      fromLua = [
        { }
        { paths = ./luasnip; }
        { paths = "~/.config/nvim-local/luasnip"; }
        { paths = "./.vim/luasnipt"; }
      ];
    };
    cmp_luasnip.enable = true;
  };
}
