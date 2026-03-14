{ pkgs, ... }:
{
  extraPlugins = [
    # https://github.com/gennaro-tedesco/nvim-possession.git
    (pkgs.vimUtils.buildVimPlugin {
      name = "nvim-possession";
      src = pkgs.fetchFromGitHub {
        owner = "gennaro-tedesco";
        repo = "nvim-possession";
        rev = "559940aa77f7b78e6c2df49f4bb5233bb60f5df3";
        hash = "sha256-osybcea2DmS0qH7MvwC6geQtYwkwDzKxOOLOx3kHrVQ=";
      };
    })
  ];

  extraConfigLua = ''
    require('nvim-possession').setup({
      autoload = true,
      autoprompt = true,
      autoswitch = {
        enable = true,
      }
    })
  '';
}
