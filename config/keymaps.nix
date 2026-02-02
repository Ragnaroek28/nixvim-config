let
  opts = {
    noremap = true;
    silent = true;
  };
in {
  keymaps = [
    # better window navigation
    {
      action = "<C-w>h";
      key = "<C-h>";
      options = opts;
      mode = "n";
    }
    {
      action = "<C-w>j";
      key = "<C-j>";
      options = opts;
      mode = "n";
    }
    {
      action = "<C-w>k";
      key = "<C-k>";
      options = opts;
      mode = "n";
    }
    {
      action = "<C-w>l";
      key = "<C-l>";
      options = opts;
      mode = "n";
    }

    # resize with arrows
    {
      action = ":resize -2<CR>";
      key = "<C-S-Up>";
      options = opts;
      mode = "n";
    }
    {
      action = ":resize +2<CR>";
      key = "<C-S-Down>";
      options = opts;
      mode = "n";
    }
    {
      action = ":vertical resize -2<CR>";
      key = "<C-S-Left>";
      options = opts;
      mode = "n";
    }
    {
      action = ":vertical resize 2<CR>";
      key = "<C-S-Right>";
      options = opts;
      mode = "n";
    }
    
    # visual mode
    {
      action = "<gv";
      key = "<";
      options = opts;
      mode = "v";
    }
    {
      action = ">gv";
      key = ">";
      options = opts;
      mode = "v";
    }
  ];
}
