_:
{
  lsp.servers.qmlls = {
    enable = true;
    config = {
      cmd = [
        "qmlls"
        "-E"
      ];
      root_markers = [
        ".git"
        ".qmlls.ini"
      ];
    };
  };
  plugins.lsp.servers.qmlls = {
    enable = true;
  };
}
