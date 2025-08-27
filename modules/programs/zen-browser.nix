##########################################################
###### !!!! IMPORT THIS FILE INTO HOME MANAGER !!!! ######
##########################################################

{ inputs, ... }:
{
  # Add Zen Browser
  imports = [
    inputs.zen-browser.homeModules.beta
  ];

  programs = {
    # Enable Zen browser
    zen-browser.enable = true;
  };

}
