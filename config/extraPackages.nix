{ pkgs, ... }:
{
  extraPackages = with pkgs; [
    html-tidy
  ];
}
