{ config, pkgs, inputs, ... }:

{
environment.systemPackages = [
    # Access the package through the input flake
    inputs.nix-gaming.packages.${pkgs.system}.star-citizen
  ];
}
