{ pkgs, ... }:
{
  # Enable Hyprland
  programs.hyprland.enable = true;

  # Enable SSDM Greeter
  services.displayManager.sddm.enable = true;

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
