_: {
  flake.modules.nixvim.yazi = _: {
    plugins.yazi = {
      enable = true;
      settings = {
        enable_mouse_support = true;
      };
    };
  };
}
