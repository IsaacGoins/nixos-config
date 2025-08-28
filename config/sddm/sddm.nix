{ pkgs, ... }:
{

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    package = pkgs.kdePackages.sddm;
  };

  catppuccin.sddm = {
    enable = true;
    font = "JetBrainsMono Nerd Font";
    fontSize = "11";
  };
  /*
    environment.systemPackages = [
      pkgs.catppuccin-sddm
      (pkgs.catppuccin-sddm.override {
        flavor = "mocha";
        font = "JetBrainsMono Nerd Font";
        fontSize = "9";
        loginBackground = true;
      })
    ];

    services.displayManager.sddm = {
      enable = true;
      wayland.enable = true;
      theme = "catppuccin-mocha";
      package = pkgs.kdePackages.sddm;
    };
  */
}
