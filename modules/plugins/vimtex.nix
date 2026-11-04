_: {
  flake.modules.nixvim.vimtex =
    { pkgs, ... }:
    let
      pdfViewer =
        if pkgs.stdenv.hostPlatform.isDarwin then
          "skim"
        else if pkgs.stdenv.hostPlatform.isLinux then
          "zathura"
        else
          "general";
    in
    {
      plugins = {
        vimtex = {
          enable = true;
          texlivePackage = null;
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
    };
}
