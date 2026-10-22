_: {
  flake.modules.nixvim.jsonls = _: {
    lsp.servers.html = {
      enable = true;
    };
  };
}
