_: {
  flake.modules.nixvim.noice = _: {
    plugins = {
      noice = {
        enable = true;
      };
      notify.enable = true;
    };
  };
}
