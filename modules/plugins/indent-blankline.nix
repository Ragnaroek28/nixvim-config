_: {
  flake.modules.nixvim.indent-blankline = _: {
    plugins.indent-blankline = {
      enable = true;
      settings = {
        exclude = {
          buftypes = [
            "terminal"
            "quickfix"
          ];
          filetypes = [
            ""
            "checkhealth"
            "help"
            "lspinfo"
            "packer"
            "TelescopePrompt"
            "TelescopeResults"
            "yaml"
            "startify"
            "yazi"
          ];
        };
      };
    };
  };
}
