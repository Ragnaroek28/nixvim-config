_: {
  flake.modules.nixvim.htmlls = _: {
    lsp.servers.html = {
      enable = true;
    };
  };
}
