{ pkgs, ... }:
let
  isDarwin = pkgs.stdenv.isDarwin;
  clangdPath = if isDarwin then "/usr/bin/clangd" else "clangd";
in {
  lsp.servers.clangd = {
    enable = true;
    package = null;
    packageFallback = true;
    config = {
      cmd = [
        clangdPath
        "--background-index"
        "--clang-tidy"
        "--log=verbose"
        "--query-driver=/Users/ragnaroek/.espressif/tools/xtensa-esp-elf/**/bin/xtensa-esp32-elf-g++"
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
    enable = false;
    enableOffsetEncodingWorkaround = true;
  };
}
