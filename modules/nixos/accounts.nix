{ pkgs, ... }:
{

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.igoins = {
    isNormalUser = true;
    description = "Isaac Goins";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = with pkgs; [
    ];
  };

}
