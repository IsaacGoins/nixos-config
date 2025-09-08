{ pkgs, ... }:
{
  imports = [
    # Import SDDM Config and Enabler
    ./config/sddm/sddm.nix
  ];

  # Enable Hyprland
  programs.hyprland.enable = true;
  services.displayManager.defaultSession = "hyprland";

  environment.systemPackages = with pkgs; [
    swaynotificationcenter
    hyprpolkitagent
    waybar
    hyprpaper
    networkmanagerapplet
    cliphist
    hyprlock
    hyprshot
    alacritty
    rofi-wayland
    rofi-calc
    rofi-power-menu
    rofi-emoji-wayland
    brightnessctl
    playerctl
    wireplumber
    pavucontrol
    catppuccin-cursors.macchiatoDark
  ];
}
