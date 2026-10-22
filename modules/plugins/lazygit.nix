_: {
  flake.modules.nixvim.lazygit = _: {
    plugins.lazygit = {
      enable = true;
    };
  };
}
