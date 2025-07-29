{ pkgs, ... }: {
  plugins = {
    vimtex = {
      enable = true;
      settings = {
        maplocalleader = "\\";
        view_method = if pkgs.stdenv.isDarwin then "skim" else "zathura";
        compiler_method = "latexmk";
        compiler_latexmk = { continuous = 0; };
      };
    };
    cmp-vimtex.enable = true;
  };
}
