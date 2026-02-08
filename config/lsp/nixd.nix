{
  lsp.servers.nixd = {
    enable = true;
    packageFallback = true;
    config = {
      filetypes = [
        "nix"
      ];
      command = [
        "nixd"
      ];
    };
  };
}
