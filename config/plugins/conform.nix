{
    plugins.conform-nvim = {
        enable = true;
        autoInstall.enable = true;
        settings = {
            default_format_opts = {
                lsp_format = "fallback";
            };
            formatters_by_ft = {
                lua = [ "stylua" ];
                cpp = [ "clang-format" ];
                "_" = [ "trim_whitespace" ];
            };
        };
    };
}
