{ inputs, self, ... }:

{ 
  perSystem =
    { system, ... }:
    let
      fullNvim = inputs.nixvim.lib.evalNixvim {
        inherit system;

        modules = with self.modules.nixvim; [
          autoCmd
          colorscheme
          extraPackages
          keymaps
          lsp
          options
          # plugins
          auto-save
          autoclose
          blink-cmp
          cmake-tools
          conform
          distant
          dropbar
          fzf
          gitblame
          image
          indent-blankline
          lazygit
          lualine
          luasnip
          markdown
          neoclip
          nix-plugins
          noice
          nvim-surround
          startify
          telescope
          todo-comment
          treesitter
          vimtex
          which-key
          yazi
          # lsp
          clangd
          gopls
          htmlls
          jsonls
          nixd
          qmlls
          yamlls
          zls
        ];
      };
      minmalNvim = inputs.nixvim.lib.evalNixvim {
        inherit system;

        modules = with self.modules.nixvim; [
          autoCmd
          colorscheme
          extraPackages
          keymaps
          lsp
          options
          # plugins
          auto-save
          autoclose
          blink-cmp
          conform
          distant
          dropbar
          fzf
          gitblame
          image
          indent-blankline
          lazygit
          lualine
          luasnip
          markdown
          neoclip
          nix-plugins
          noice
          nvim-surround
          startify
          telescope
          todo-comment
          treesitter
          which-key
          yazi
          # lsp
          clangd
          gopls
          htmlls
          jsonls
          nixd
        ];
      };
    in
    {
      packages = {
        default = fullNvim.config.build.package;
        min = minmalNvim.config.build.package;
      };
      checks = {
        default = fullNvim.config.test;
        min = minmalNvim.config.test;
      };
    };
}
