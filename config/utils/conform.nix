{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        cpp = [ "clang-tidy" ];
        c = [ "clang-tidy" ];
        nix = [ "nixfmt" ];
        tex = [ "tex-fmt --nowrap" ];
        latex = [ "tex-fmt --nowrap" ];
      };

      formatters = {
        clang-tidy = {
          command = "clang-tidy";
          args = [ "--format-style=file" "--quiet" "--" ];
          stdin = false;
        };
      };

      format_on_save = {
        timeout_ms = 1500;
        lsp_format = "fallback";
      };
    };
  };
}
