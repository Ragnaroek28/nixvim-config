_: {
  flake.modules.nixvim.cmake-tools = _: {
    plugins.cmake-tools = {
      enable = true;
      settings = {
        cmake_regenerate_on_save = false;
      };
    };
  };
}
