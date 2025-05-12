{ config, pkgs, inputs, ... }:
{
    imports =
    [ # Include the results of the hardware scan.
      ./vaddago-hardware.nix
    ];
    networking.hostName = "vassago";
}