_: {
  flake.modules.nixvim.lsp = _: {
    plugins.lspconfig.enable = true;
    lsp = {
      inlayHints.enable = false;
      keymaps =
        let
          opts_buf = builtins.concatStringsSep " " [
            "{"
            "focusable = true,"
            "scope = 'buffer',"
            "border = 'rounded',"
            "source = 'always',"
            "}"
          ];
          opts_line = builtins.concatStringsSep " " [
            "{"
            "focusable = true,"
            "scope = 'line',"
            "border = 'rounded',"
            "source = 'always',"
            "prefix = ' ',"
            "}"
          ];
        in
        [
          {
            key = "<leader>lgr";
            lspBufAction = "references";
            mode = "n";
            options = {
              desc = "Goto the References of the current code";
            };
          }
          {
            key = "<leader>lgd";
            lspBufAction = "definition";
            mode = "n";
            options = {
              desc = "Goto the definition of the symbol";
            };
          }
          {
            key = "<leader>lrn";
            lspBufAction = "rename";
            mode = "n";
            options = {
              desc = "Rename the symbol";
            };
          }
          {
            key = "<leader>lf";
            lspBufAction = "format";
            mode = "n";
            options = {
              desc = "Format using LSP";
            };
          }
          {
            key = "<leader>lK";
            lspBufAction = "hover";
            mode = "n";
            options = {
              desc = "Show the hover information for the symbol";
            };
          }
          {
            key = "<leader>lD";
            action = "<CMD>lua vim.diagnostic.open_float(${opts_buf})<CR>";
            mode = "n";
            options = {
              desc = "List the LSP diagnostics for the buffer";
            };
          }
          {
            key = "<leader>ld";
            action = "<CMD>lua vim.diagnostic.open_float(${opts_line})<CR>";
            mode = "n";
            options = {
              desc = "Show the LSP diagnostics for the current line";
            };
          }
          {
            key = "<leader>lld";
            action = "<CMD>lua vim.diagnostic.setloclist()<CR>";
            mode = "n";
            options = {
              desc = "Open a list of the all LSP diagnostics for the buffer";
            };
          }
          {
            key = "<leader>l<CR>";
            lspBufAction = "code_action";
            mode = "n";
            options = {
              desc = "Try LSP fix for the error at cursor position";
            };
          }
        ];
    };
  };
}
