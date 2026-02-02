{
  plugins.blink-cmp = {
    enable = true;

    settings = {
      appearance = {
        nerd_font_variant = "mono";
      };

      keymap = {
        preset = "enter";

      "<Up>" = [ "select_prev" "fallback" ];
      "<Down>" = [ "select_next" "fallback" ];
      "<Tab>" =  [ "select_next" "fallback" ];
      "<S-Tab>" =  [ "select_prev" "fallback" ];
      # Scroll documentation
      "<C-b>" = [ "scroll_documentation_up" "fallback" ];
      "<C-f>" = [ "scroll_documentation_down" "fallback" ];
      # Show/hide signature
      "<C-k>" = [ "show_signature" "hide_signature" "fallback" ];
      };

      sources.default = [
        "lsp"
        "path"
        "snippets"
        "buffer"
      ];

      completion = {
        menu.draw.treesitter = [ "lsp" ];
        trigger.show_on_trigger_character = true;
        documentation.auto_show = true;
      };

      signature.enabled = true;
    };
  };
}
