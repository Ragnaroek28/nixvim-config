_: {
  flake.modules.nixvim.startify = _: {
    plugins.startify = {
      enable = true;
      settings = {
        bookmarks = [
          "$HOME/Development/nix/nixvim/flake.nix"
          "$HOME/nix-cfg/flake.nix"
        ];
        change_cmd = "cd";
        change_to_dir = true;
        commands = [
          [
            "Vim Reference"
            "h ref"
          ]
          [
            "Open Yazi"
            ":Yazi"
          ]
          [
            "Open Telescope"
            ":Telescope"
          ]
          [
            "Open Possesion"
            ":SessionList"
          ]
        ];
        custom_header = [
          ""
          "     ███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
          "     ████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
          "     ██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
          "     ██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
          "     ██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
          "     ╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
        ];
        files_number = 5;
      };
    };
  };
}
