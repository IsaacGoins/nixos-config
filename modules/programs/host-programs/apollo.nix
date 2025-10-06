{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.can-utils
		pkgs.savvycan
  ];
}
