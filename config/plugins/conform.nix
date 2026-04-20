{
  plugins.conform-nvim = {
    enable = true;
    autoInstall.enable = true;
    settings = {
      default_format_opts = {
        lsp_format = "fallback";
      };
      formatters_by_ft = {
        lua = [ "stylua" ];
        cpp = [ "clang-format" ];
        nix = [ "nixfmt" ];
        go = [ "gofmt" ];
        html = [ "html-tidy" ];
        "_" = [ "trim_whitespace" ];
      };
    };
  };
}
