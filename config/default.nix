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
    ./plugins/bufferline.nix
    ./plugins/startup.nix
    ./plugins/image.nix
    ./plugins/nix.nix
    ./plugins/git.nix
    ./plugins/which-key.nix
    ./plugins/autopairs.nix
    ./plugins/conform.nix
    ./plugins/indent-blankline.nix
    ./plugins/noice.nix

    ./lsp.nix
    ./lsp/clangd.nix
  ];
}
