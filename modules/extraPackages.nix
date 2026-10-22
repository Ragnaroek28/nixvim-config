_: {
  flake.modules.nixvim.extraPackages =
    { pkgs, ... }:
    {
      extraPackages = with pkgs; [
      ];
    };
}
