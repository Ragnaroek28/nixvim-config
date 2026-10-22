_: {
  flake.modules.nixvim.gitblame = _: {
    plugins.gitblame = {
      enable = true;
    };
  };
}
