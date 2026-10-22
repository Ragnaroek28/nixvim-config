_: {
  flake.modules.nixvim.nixd = _: {
    lsp.servers.nixd = {
      enable = true;
      packageFallback = true;
    };
  };
}
