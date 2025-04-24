{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        cpp = [ "clang-tidy --format-style='file'" ];
        nix = [ "nixfmt" ];
        tex = [ "tex-fmt --nowrap" ];
        latex = [ "tex-fmt --nowrap" ];
      };

      format_on_save = {
        timeout_ms = 1500;
        lsp_format = "fallback";
      };
    };
  };
}
