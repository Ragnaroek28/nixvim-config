_: {
  flake.modules.nixvim.ccc = _: {
    plugins.ccc = {
      enable = true;
      settings.highlighter.auto_enable = true;
    };
  };
}
