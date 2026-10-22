_: {
  flake.modules.nixvim.gopls = _: {
    lsp.servers.gopls = {
      enable = true;
      config = {
        gofump = false;
        usePlaceholders = true;
      };
    };
  };
}
