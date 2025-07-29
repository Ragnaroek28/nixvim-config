_:

{
  # plugins.lspconfig.enable = true; # doesnt work, dont know why
  plugins = {
    clangd-extensions = { enable = true; };
    lsp = {
      enable = true;
      servers = {
        clangd.enable = true;
        elixirls.enable = true;
        nixd.enable = true;
        neocmake.enable = true;
        texlab = { enable = true; };
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
