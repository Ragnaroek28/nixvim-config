{
  plugins.fzf-lua = {
    enable = true;
    settings = {
      files = {
        color_icons = true;
        file_icons = true;
        find_opts = {
          __raw = "[[-type f -not -path '*.git/objects*' -not -path '*.env*']]";
        };
        multiprocess = true;
        prompt = "Files❯ ";
      };
      winopts = {
        col = 0.3;
        height = 0.4;
        row = 0.99;
        width = 0.93;
      };
    };
  };
}
