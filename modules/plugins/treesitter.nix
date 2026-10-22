_: {
  flake.modules.nixvim.treesitter = _: {
    plugins.treesitter = {
      enable = true;
      indent.enable = true;
      highlight.enable = true;
      folding.enable = false;
    };
  };
}
