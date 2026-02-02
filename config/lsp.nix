let
  bufops = {
    noremap = true;
    silent = true;
  };
in {
  lsp.keymaps = [
    {
      key = "gr";
      lspBufAction = "references";
      mode = "n";
      options = bufops;
    }
    {
      key = "gd";
      lspBufAction = "definition";
      mode = "n";
      options = bufops;
    }
    {
      key = "<space>rn";
      lspBufAction = "rename";
      mode = "n";
      options = bufops;
    }
    {
      key = "K";
      action = ''
              function()
                  vim.lsp.buf.format({ async = true })
              end
      '';
      mode = "n";
      options = bufops;
    }
  ];
}
