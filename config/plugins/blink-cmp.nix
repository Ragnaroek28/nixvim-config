{
  plugins = {
    blink-cmp = {
      enable = true;

      settings = {
        appearance = {
          nerd_font_variant = "mono";
        };

        keymap = {
          preset = "enter";

          "<Up>" = [
            "select_prev"
            "fallback"
          ];
          "<Down>" = [
            "select_next"
            "fallback"
          ];
          "<Tab>" = [
            "snippet_forward"
            "select_next"
            "fallback"
          ];
          "<S-Tab>" = [
            "snippet_backward"
            "select_prev"
            "fallback"
          ];
          # Scroll documentation
          "<C-b>" = [
            "scroll_documentation_up"
            "fallback"
          ];
          "<C-f>" = [
            "scroll_documentation_down"
            "fallback"
          ];
          # Show/hide signature
          "<C-k>" = [
            "show_signature"
            "hide_signature"
            "fallback"
          ];
        };

        snippets.preset = "luasnip";

        sources = {
          default = [
            "snippets"
            "lsp"
            "latex"
            "vimtex"
            "path"
            "buffer"
          ];
          providers = {
            vimtex = {
              name = "vimtex";
              module = "blink.compat.source";
            };
            latex = {
              name = "Latex";
              module = "blink-cmp-latex";
              opts = {
                insert_commands = true;
              };
            };
          };
        };

        completion = {
          menu.draw.treesitter = [ "lsp" ];
          trigger.show_on_trigger_character = true;
          documentation.auto_show = true;
        };

        signature.enabled = true;
      };
    };
    blink-compat.enable = true;
    blink-cmp-latex.enable = true;

  };
}
