_: {
  flake.modules.nixvim.jsonls = _: {
    lsp.servers.jsonls = {
      enable = true;
    };
  };
}
