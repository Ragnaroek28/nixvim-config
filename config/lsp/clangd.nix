{ pkgs, ... }:
{
  lsp.servers.clangd = {
    enable = true;
    packageFallback = false;
    config = {
      cmd = [
        "${pkgs.clang-tools}/bin/clangd"
        "--background-index"
        "--clang-tidy"
        "--log=verbose"
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
  plugins.clangd-extensions = {
    enable = true;
    enableOffsetEncodingWorkaround = true;
  };
}
