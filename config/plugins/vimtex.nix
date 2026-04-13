{ pkgs, ... }:
let
  pdfViewer =
    if pkgs.stdenv.isDarwin then "skim"
    else if pkgs.stdenv.isLinux then "zathura"
    else "general";
in
{
  plugins = {
    vimtex = {
      enable = true;
      settings = {
        imaps_enabled = true;
        indent_enabled = true;
        complete_enable = true;
        syntax_enabled = true;
        view_method = pdfViewer;
      };
    };

    cmp-vimtex.enable = true;
  };
}
