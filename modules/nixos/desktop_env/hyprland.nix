{ pkgs, ... }:
{

  # Enable SSDM Greeter
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;

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
  ];


}
