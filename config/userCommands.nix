{
  userCommands = {
    "SessionList" = {
      command.__raw = ''function() require("nvim-possession").list() end'';
    };

    "SessionNew" = {
      command.__raw = ''function() require("nvim-possession").new() end'';
    };

    "SessionUpdate" = {
      command.__raw = ''function() require("nvim-possession").update() end'';
    };

    "SessionDelete" = {
      command.__raw = ''function() require("nvim-possession").delete() end'';
    };
  };
}
