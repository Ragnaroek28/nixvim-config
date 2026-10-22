_: {
  flake.modules.nixvim.nix-plugins = _: {
    plugins = {
      nix = {
        enable = true;
      };
      nix-develop = {
        enable = true;
      };
    };
  };
}
