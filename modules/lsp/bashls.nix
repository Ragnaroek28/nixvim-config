_: {
  flake.modules.nixvim.bashls = {
    lsp.servers.bashls = {
      enable = true;
      config = {
        filetyps = [
          "bash"
          "sh"
          "zsh"
        ];
      };
    };
  };
}
