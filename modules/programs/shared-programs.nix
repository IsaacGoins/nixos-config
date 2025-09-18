#### IMPORT INTO HOME-MANAGER ###
{ pkgs, ... }:
{
  imports = [
    ../../modules/programs/program-installers/zen-browser.nix
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    alacritty
    virt-manager
    discord
    orca-slicer
    libreoffice-qt
    hunspell
    hunspellDicts.en_US-large
    obsidian
    f3d
    prismlauncher
    qemu
    inkscape
    kicad
  ];

}
