{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    libsForQt5.qtstyleplugin-kvantum
    kdePackages.qtstyleplugin-kvantum
    libsForQt5.qt5ct

  ];

}
