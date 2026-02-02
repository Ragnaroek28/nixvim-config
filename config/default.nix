{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./keymaps.nix
    ./colorscheme.nix

    ./plugins/blink-cmp.nix

    ./lsp.nix
    ./lsp/clangd.nix
  ];
}
