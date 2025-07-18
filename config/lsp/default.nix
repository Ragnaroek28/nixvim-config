{ pkgs, ... }:

{
  plugins = {
    clangd-extensions = { enable = true; };
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        elixirls.enable = true;
        gleam.enable = true;
        gopls.enable = true;
        kotlin_language_server.enable = true;
        nixd.enable = true;
        prolog_ls = {
          enable = true;
          package = pkgs.swi-prolog;
        };
        ruff.enable = true;
        neocmake.enable = true;
        texlab.enable = true;
        julials = {
          enable = true;
          package = null;
        };
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };
    rustaceanvim.enable = true;
  };
}
