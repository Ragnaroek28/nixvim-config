{
  colorscheme = "catppuccin";

  colorschemes.catppuccin = {
    enable = true;
    settings = {
      # color_overrides = {
      #   mocha = {
      #     base = "#1e1e2f";
      #   };
      # };
      disable_underline = true;
      flavour = "mocha";
      integrations = {
        native_lsp = {
          enabled = true;
          virtual_text = {
            errors = [ "italic" ];
            warnings = [ "italic" ];
            hints = [ "italic" ];
            information = [ "italic" ];
          };
          underlines = {
            errors = [ "underline" ];
            warnings = [ "underline" ];
            hints = [ "underline" ];
            information = [ "underline" ];
          };
        };
        #   cmp = true;
        gitsigns = true;
        #   mini = {
        #     enabled = true;
        #     indentscope_color = "";
        #   };
        notify = false;
        #   nvimtree = true;
        treesitter = true;
      };
      styles = {
        booleans = [
          "bold"
          "italic"
        ];
        conditionals = [
          "bold"
        ];
      };
      term_colors = true;
    };
  };
}
