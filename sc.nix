{ config, pkgs, inputs, ... }:

let
  sc = inputs.nix-gaming.packages.${pkgs.system}.star-citizen;
in
{
  environment.systemPackages = [
    (pkgs.writeShellScriptBin "star-citizen" ''
      export DISPLAY=
      exec ${sc}/bin/star-citizen "$@"
    '')
  ];
}
