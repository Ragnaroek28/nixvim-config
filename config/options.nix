{
  clipboard.register = "unnamedplus";
  # no "vim.opt.completeopt = {'menu', 'menuone', 'noselect'}" available?
  opts = {
    completeopt = [ "menu" "menuone" "noselect" ];
    mouse = "a"; # allow the usage of the mouse

    # Tab
    tabstop = 4; # define the width of an indendentation using tab
    softtabstop = 4;
    shiftwidth = 4;
    expandtab = true; # tabs are spaces

    # UI config
    number = true;
    relativenumber = true;
    cursorline = true;
    splitbelow = true;
    splitright = true;
    termguicolors = true;

    # Searching
    incsearch = true;
    hlsearch = true;
    ignorecase = true;
    smartcase = true;
  };

}
