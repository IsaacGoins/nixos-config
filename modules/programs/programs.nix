{ pkgs, ... }:
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Import Nixvim Config (and nixvim itself)
  programs.nixvim = import ../nixvim/config/default.nix;

  # Enable Tailscale
  services.tailscale.enable = true;

  environment.systemPackages = with pkgs; [
    wget
    tailscale
    xterm
    git
    pciutils
    pokeget-rs
    xdg-user-dirs
  ];

}
