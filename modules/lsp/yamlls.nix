_: {
  flake.modules.nixvim.yamlls = _: {
    lsp.servers.yamlls = {
      enable = true;
    };
  };
}
