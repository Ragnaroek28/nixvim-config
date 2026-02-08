{
    plugins.startup = {
        enable = true;
        settings = {
            theme = "evil";
            userMappings = {
                "<leader>ff" = "<cmd>Telescope find_files<CR>";
                "<leader>lg" = "<cmd>Telescope live_grep<CR>";
            };
        };
    };
}

