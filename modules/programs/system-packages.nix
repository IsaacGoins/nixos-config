{ pkgs, ... }:
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Import Nixvim Config (and nixvim itself)
  programs.nixvim = import ./config/nixvim/config/default.nix;

  # Enable Tailscale
  services.tailscale.enable = true;

  # Required for virt-manager and gnome boxes to work
  users.groups.libvirtd.members = [ "igoins" ];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
  services.spice-vdagentd.enable = true;
  users.users.igoins.extraGroups = [ "libvirtd" ];

  # Steam must be here
  programs.steam = {
    enable = true;
    # optional helpers
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
  hardware.opengl.driSupport32Bit = true;

  # Enable foreign dynamically-linked executables
  programs.nix-ld.enable = true;

  environment.systemPackages = with pkgs; [
    wget
    gnome-boxes
    tailscale
    xterm
    git
    pciutils
    pokeget-rs
    xdg-user-dirs
    zip
    unzip
    libgcc
    gcc
    valgrind
    gnumake
    gnome-network-displays
  ];

}
