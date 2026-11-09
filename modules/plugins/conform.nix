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
            cpp = [ "clang-format" ];
            css = [ "prettier" ];
            elixir = [ "mix" ];
            eelixir = [ "mix" ];
            go = [ "gofmt" ];
            heex = [ "mix" ];
            html = [ "html-tidy" ];
            js = [ "prettier" ];
            lua = [ "stylua" ];
            nix = [ "nixfmt" ];
            qml = [ "qmlformat" ];
            scss = [ "prettier" ];
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
