{ pkgs, ... }:
{
  # Enable Steam
  programs.steam.enable = true;

  # Enable Virt-manager
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "igoins" ];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;

  environment.systemPackages = with pkgs; [
    discord
    orca-slicer
    libreoffice-qt
    obsidian
    f3d
    prismlauncher
    kdePackages.kdeconnect-kde
    kdePackages.dolphin
    kdePackages.ark
    kdePackages.okular
    kdePackages.kate
    kdePackages.gwenview
    kdePackages.plasma-systemmonitor
    kdePackages.partitionmanager
    qemu
    inkscape
  ];
}
