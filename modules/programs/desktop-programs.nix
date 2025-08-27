{ pkgs, ... }:
{
  # Enable Steam
  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    discord
    orca-slicer
    libreoffice-qt
    obsidian
    f3d
    prismlauncher
    kdePackages.kdeconnect-kde
    kdePackages.dolphin
    kdePackages.okular
    kdePackages.kate
    kdePackages.gwenview
    kdePackages.plasma-systemmonitor
    kdePackages.konsole
    kdePackages.partitionmanager
    qemu
    quickemu
  ];
}
