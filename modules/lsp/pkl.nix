_: {
  flake.modules.nixvim.pkl = { pkgs, ... }: {
    lsp.servers.pkl = {
      enable = true;
      package = pkgs.pkl-lsp;
      config = {
        setup = {
          filetypes = [
            "pkl"
          ];
          highlight = {
            enable = true;
          };
          indent = {
            enable = true;
          };
        };
      };
    };
  };
}
