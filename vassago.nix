{ config, pkgs, inputs, ... }:
{
    imports =
    [ # Include the results of the hardware scan.
      ./vassago-hardware.nix
    ];
    networking.hostName = "vassago";
}