_: {
  flake.modules.nixvim.bufferline = _: {
    plugins = {
      bufferline.enable = true;
      web-devicons.enable = true;
    };
  };
}
