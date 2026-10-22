_: {
  flake.modules.nixvim.telescope = _: {
    plugins.telescope = {
      enable = true;
      settings = {
        file_ignore_patterns = [
          "^.git/"
          "^.mypy_cache/"
          "^__pycache__/"
          "^output/"
          "^data/"
          "%.ipynb"
          "build/"
        ];
      };
      keymaps = {
        "<leader>ff" = {
          action = "find_files";
          options = {
            desc = "Telescope files";
          };
        };
        "<leader>fo" = {
          action = "oldfiles";
          options = {
            desc = "Telescope recent files";
          };
        };
        "<leader>fb" = {
          action = "buffers";
          options = {
            desc = "Telescope buffers";
          };
        };
        "<leader>fg" = {
          action = "live_grep";
          options = {
            desc = "Telescope grep";
          };
        };
        "<leader>fm" = {
          action = "man_pages";
          options = {
            desc = "Telescope man pages";
          };
        };
        "<leader>fj" = {
          action = "jumplist";
          options = {
            desc = "Telescope jumplist";
          };
        };
        "<leader>fli" = {
          action = "lsp_implementation";
          options = {
            desc = "Telescope LSP implementations";
          };
        };
        "<leader>flr" = {
          action = "lsp_reference";
          options = {
            desc = "Telescope LSP references";
          };
        };
      };
    };
    plugins.web-devicons.enable = true; # dependency
  };
}
