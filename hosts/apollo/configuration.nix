{
  inputs,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    inputs.home-manager.nixosModules.default
    ../../modules/nixos/desktop_env/kdePlasma.nix
    ../../modules/nixos/nvidia/nvidia.nix
    ../../modules/nixos/accounts.nix
    ../../modules/nixos/basic.nix
    ../../modules/nixos/fonts.nix
    ../../modules/programs/programs.nix
    ../../modules/programs/desktop-programs.nix
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "apollo"; # Define hostname

  # Home Manager Location
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "igoins" = import ./home.nix;
    };
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?
}
