{ pkgs, ... }:
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Import Nixvim Config (and nixvim itself)
  programs.nixvim = import ./config/nixvim/config/default.nix;

  # Enable Tailscale
  services.tailscale.enable = true;

  # Required for virt-manager to work
  users.groups.libvirtd.members = [ "igoins" ];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;

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
    gnumake
    gnome-network-displays
  ];

}
