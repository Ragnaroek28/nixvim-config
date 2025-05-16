{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        cpp = [ "clang-format" ];
        c = [ "clang-format" ];
        nix = [ "nixfmt" ];
        tex = [ "tex-fmt --nowrap" ];
        latex = [ "tex-fmt --nowrap" ];
      };

      formatters = {
        clang-format = {
          command = "clang-format";
          args = [ "--style=file" ];
          stdin = true;
        };
      };

      format_on_save = {
        timeout_ms = 1500;
        lsp_format = "fallback";
      };
    };
  };
}
