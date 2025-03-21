{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        cpp = [ "clang_tidy --format-style='file'" ];
        nix = [ "nixfmt" ];
      };

      format_on_save = {
        timeout_ms = 1500;
        lsp_format = "fallback";
      };
    };
  };
}
