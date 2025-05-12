{ config, pkgs, inputs, ... }:
{
    imports =
    [ # Include the results of the hardware scan.
      ./paimon-hardware.nix
    ];
    networking.hostName = "paimon";
}