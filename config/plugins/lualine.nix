{
  plugins.lualine = {
    enable = true;
    settings = {
      sections = {
        lualine_a = [
          "{ \"filename\", path = 1}"
          ''{
                require("nvim-possession").status,
                cond = function()
                    return require("nvim-possession").status() ~= nil
                end,
          },''
        ];
      };
    };
  };
}
