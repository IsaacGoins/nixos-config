{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    corefonts
    vistafonts
    excalifont
  ];
  environment.systemPackages = [
    pkgs.font-manager
  ];
}
