{ lib, ... }:
{
  flake.modules.nixvim.conform =
    { pkgs, ... }:
    {
      plugins.conform-nvim = {
        enable = true;
        autoInstall.enable = true;
        settings = {
          default_format_opts = {
            lsp_format = "fallback";
          };
          formatters_by_ft = {
            lua = [ "stylua" ];
            cpp = [ "clang-format" ];
            nix = [ "nixfmt" ];
            go = [ "gofmt" ];
            html = [ "html-tidy" ];
            qml = [ "qmlformat" ];
            zig = [ "zig" ];
            zsh = [
              "shellcheck"
              "shellharden"
              "shfmt"
            ];
            "_" = [
              "squeeze_blanks"
              "trim_whitespace"
              "trim_newlines"
            ];
          };
          formatters = {
            shellcheck = {
              command = lib.getExe pkgs.shellcheck;
            };
            shfmt = {
              command = lib.getExe pkgs.shfmt;
            };
            shellharden = {
              command = lib.getExe pkgs.shellharden;
            };
            squeeze_blanks = {
              command = lib.getExe' pkgs.coreutils "cat";
            };
          };
        };
      };
    };
}
