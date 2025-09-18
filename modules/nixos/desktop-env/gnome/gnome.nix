{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # optional GNOME app groups – keep here if you want them system-wide
  services.gnome.core-apps.enable = true;
  services.gnome.core-developer-tools.enable = true;
  services.gnome.games.enable = true;

  # allow gsettings/dconf to function
  programs.dconf.enable = true;
}
