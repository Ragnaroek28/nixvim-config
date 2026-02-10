{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./keymaps.nix
    ./colorscheme.nix

    ./plugins/blink-cmp.nix
    ./plugins/treesitter.nix
    ./plugins/nvim-surround.nix
    ./plugins/luasnip.nix
    ./plugins/neoclip.nix
    ./plugins/telescope.nix
    ./plugins/yazi.nix
    ./plugins/dropbar.nix
    ./plugins/lualine.nix
    ./plugins/barbar.nix
    ./plugins/startify.nix
    ./plugins/image.nix
    ./plugins/nix.nix
    ./plugins/git.nix
    ./plugins/which-key.nix
    ./plugins/autoclose.nix
    ./plugins/conform.nix
    ./plugins/indent-blankline.nix
    ./plugins/noice.nix
    ./plugins/todo-comments.nix
    ./plugins/auto-save.nix
    ./plugins/terminal.nix

    ./lsp.nix
    ./lsp/clangd.nix
    ./lsp/nixd.nix
  ];
}
