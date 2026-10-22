_: {
  flake.modules.nixvim.autoCmd = _: {
    autoCmd = [
      {
        event = "FileType";
        pattern = "qml";
        command = "setlocal indentexpr=";
      }
    ];
  };
}
