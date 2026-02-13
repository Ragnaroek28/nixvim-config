let
  opts = {
    noremap = true;
    silent = true;
  };
in
{
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

    # formatting
    {
      mode = "n";
      key = "<Leader>f";
      options = {
        desc = "Format the current Buffer using Conform";
      };
      action.__raw = ''
        function()
          require("conform").format({ async = true }, function(err, did_edit)
            if not err and did_edit then
              vim.notify("Code formatted", vim.log.levels.INFO, { title = "Conform" })
            end
          end)
        end
      '';
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<Leader>F";
      options = {
        desc = "Format injected Languages using Conform";
      };
      action.__raw = ''
        function()
          require("conform").format({ formatters = { "injected" }, timeout_ms = 3000 }, function(err, did_edit)
            if not err and did_edit then
              vim.notify("Code formatted", vim.log.levels.INFO, { title = "Conform" })
            end
          end)
        end
      '';
    }
    {
      mode = [ "n" ];
      key = "<Leader>;";
      options = {
        desc = "Insert semicolon at the end of the line.";
      };
      action = "mmA;<Esc>`m";
    }

    # Utilities
    {
      mode = [ "n" ];
      key = "<Leader><CR>";
      options = {
        desc = "Use LSP Fix under Cursor.";
      };
      action = ":lua vim.lsp.buf.code_action()<CR>";
    }
    {
      mode = [ "n" ];
      key = "<Leader>d";
      options = {
        desc = "Show the LSP diagnostics.";
      };
      action = ":lua vim.diagnostic.setloclist()<CR>";
    }
    {
      mode = [ "n" ];
      key = "<Leader>f";
      options = {
        desc = "Open Chadtree";
      };
      action = ":CHADopen<CR>";
    }
    {
      mode = [ "n" ];
      key = "<Leader>F";
      options = {
        desc = "Open Yazi";
      };
      action = ":Yazi<CR>";
    }
  ];
}
