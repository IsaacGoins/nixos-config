{
  config,
  pkgs,
  lib,
  ...
}:

let
  # --- tweakables ---
  cursorPkg = pkgs.catppuccin-cursors.macchiatoDark;
  cursorName = "catppuccin-macchiato-dark-cursors";
  terminal = "alacritty"; # your terminal command
  browser = "zen";
  fileManager = "nautilus";
in
{

  # ------------------------------------------------------------
  # Packages (user-level): GNOME extensions + cursor theme, etc.
  # ------------------------------------------------------------
  home.packages = with pkgs; [
    # Gnome Extensions
    gnomeExtensions.blur-my-shell
    gnomeExtensions.rounded-window-corners-reborn
    gnomeExtensions.app-grid-wizard
    gnomeExtensions.appindicator

    # Cursor theme
    cursorPkg
  ];

  # ------------------------------------------------------------
  # Pointer/Cursor (user session + GTK/X11 apps)
  # ------------------------------------------------------------
  home.pointerCursor = {
    name = cursorName;
    package = cursorPkg;
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };

  # ------------------------------------------------------------
  # GNOME Shell / Extensions Configuration
  # ------------------------------------------------------------
  dconf.settings = {
    #GNOME SETTINGS
    # GNOME animations master switch (should already be true)
    "org/gnome/desktop/interface" = {
      enable-animations = true;
    };

    # Scailing
    "org/gnome/desktop/interface" = {
      text-scaling-factor = 1.25; # 125%
    };

    ## EXTENSION SETTINGS
    # Enable extensions
    "org/gnome/shell" = {
      enabled-extensions = [
        "blur-my-shell@aunetx"
        "rounded-window-corners@fxgn"
        "app-grid-wizard@mirzadeh.pro"
        "appindicatorsupport@rgcjonas.gmail.com"
      ];
    };

    ## UNBINDINGS
    # Disable GNOME Shell's app hotkeys so Super+1..9 can be used for workspaces
    "org/gnome/shell/keybindings" = {
      switch-to-application-1 = [ ];
      switch-to-application-2 = [ ];
      switch-to-application-3 = [ ];
      switch-to-application-4 = [ ];
      switch-to-application-5 = [ ];
      switch-to-application-6 = [ ];
      switch-to-application-7 = [ ];
      switch-to-application-8 = [ ];
      switch-to-application-9 = [ ];
    };
    "org/gnome/desktop/wm/keybindings" = {
      help = [ ]; # unbinds F1
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      help = [ ]; # unbinds Super+F1
    };
    # Optional: clear legacy/conflicting binds (keeps things tidy)
    "org/gnome/shell/keybindings" = {
      open-application-menu = [ ];
    };

    "org/gnome/desktop/wm/keybindings" = {
      switch-group = [ ]; # disable Super+`
      switch-group-backward = [ ]; # disable Shift+Super+`
    };

    # KEYBINDINGS
    "org/gnome/desktop/wm/keybindings" = {
      # Workspaces: switch 1..9
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      switch-to-workspace-5 = [ "<Super>5" ];
      switch-to-workspace-6 = [ "<Super>6" ];
      switch-to-workspace-7 = [ "<Super>7" ];
      switch-to-workspace-8 = [ "<Super>8" ];
      switch-to-workspace-9 = [ "<Super>9" ];

      # Move focused window to workspace 1..9
      move-to-workspace-1 = [ "<Super><Shift>1" ];
      move-to-workspace-2 = [ "<Super><Shift>2" ];
      move-to-workspace-3 = [ "<Super><Shift>3" ];
      move-to-workspace-4 = [ "<Super><Shift>4" ];
      move-to-workspace-5 = [ "<Super><Shift>5" ];
      move-to-workspace-6 = [ "<Super><Shift>6" ];
      move-to-workspace-7 = [ "<Super><Shift>7" ];
      move-to-workspace-8 = [ "<Super><Shift>8" ];
      move-to-workspace-9 = [ "<Super><Shift>9" ];

      # Window Management
      close = [ "<Super>q" ];
      fullscreen = [ "<Super>f" ];
    };

    "org/gnome/shell/keybindings" = {
      toggle-overview = [ "<Super>space" ];
    };

    "org/gnome/shell/keybindings" = {
      # Opens the GNOME screenshot UI (the same one from Quick Settings)
      screenshot = [ "<Super><Ctrl>S" ];

      # Optional extra binds:
      show-screenshot-ui = [ "<Super><Shift>S" ]; # area selection
      screenshot-window = [ "<Super><Alt>S" ]; # current window
    };

    # Custom launchers (terminal on SUPER+Return, screenshot on Shift+Print)
    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/term/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/webBrowser/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/fileManager/"
      ];
    };
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/term" = {
      name = "Terminal";
      command = terminal;
      binding = "<Super>grave";
    };
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/webBrowser" = {
      name = "Zen Browser";
      command = browser;
      binding = "<Super>F1";
    };
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/fileManager" = {
      name = "Files";
      command = fileManager;
      binding = "<Super>F2";
    };

    # Cursor theme/size at the GNOME level (Wayland-friendly)
    "org/gnome/desktop/interface" = {
      cursor-theme = cursorName;
      cursor-size = 24;
    };

  };
}
