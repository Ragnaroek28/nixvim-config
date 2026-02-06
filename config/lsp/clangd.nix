{
  lsp.servers.clangd = {
    enable = true;
    packageFallback = true;
    config = {
      cmd = [
          "clangd"
          "--background-index"
          "--query-driver=/nix/store/*-clang-wrapper*/bin/clang++"
        ];
        filetypes = [
          "c"
          "cpp"
        ];
        root_markers = [
          "compile_commands.json"
          "compile_flags.txt"
          ".git"
        ];
    };
  };
}
