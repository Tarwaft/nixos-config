# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
  # TEMP for insecure packages that are needed
  #TODO check if it can be removed
  nixpkgs.config.permittedInsecurePackages = [
    "libsoup-2.74.3"
  ];



  hardware.bluetooth.enable = true; # enables support for Bluetooth
  hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth cont

  hardware.opentabletdriver.enable = true;

  hardware.opengl = {
  enable = true;
  driSupport32Bit = true;   # THIS IS CRITICAL
};
environment.systemPackages = with pkgs; [
  lutris
  winetricks
  vulkan-loader
  vulkan-tools
  mesa
];
  

  
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelModules = [ "hid_logitech" "hid_logitech_hidpp" ];


  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  security.polkit.enable = true;


  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  hardware.graphics.enable32Bit = true;

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };



  

  # Configure console keymap
  console.keyMap = "de";


  nix.settings = {
    substituters = ["https://hyprland.cachix.org"];
    trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  };

  

nix.settings = {
    http-connections = 128;
    max-substitution-jobs = 128;
    max-jobs = "auto";
  };


  

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;
  

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.tarwaft = {
    isNormalUser = true;
    description = "Joshua David Conradi";
    extraGroups = [ "networkmanager" "wheel" "input" ];
    packages = with pkgs; [
    #  thunderbird
	    
    ];
    
  };
  nix.gc = {
    automatic = true;
    dates = "daily"; # or "weekly", depending on how often you want it to run
    options = "--delete-older-than 28d";
  };


  

hardware.new-lg4ff.enable = true;
  # services.udev.extraRules = ''
  #   # Rule 1: Modeswitch for G920 (c261 -> c262)
  #   ACTION=="add", SUBSYSTEM=="usb", ATTRS{idVendor}=="046d", ATTRS{idProduct}=="c261", RUN+="${pkgs.usb-modeswitch}/bin/usb_modeswitch -v 046d -p c261 -m 01 -r 01 -C 03 -M '0f00010142'"

  #   # Rule 2: Force Permienvironmentssions for the working G920 ID (c262)
  #   # This specifically addresses the "permission denied" error.
  #   # We apply the rule to *all* associated input devices for this USB ID.
  #   SUBSYSTEMS=="usb", ATTRS{idVendor}=="046d", ATTRS{idProduct}=="c262", MODE="0666"

  #   # You might also try specifying the input subsystem for precision:
  #   # SUBSYSTEM=="input", ATTRS{idVendor}=="046d", ATTRS{idProduct}=="c262", MODE="0666"
  # '';
  
  # ... (rest of your config) ...

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # List packages installed in system profile. To se arch, run:
  # $ nix search wget

#services.jellyfin.enable = true;
#services.jellyfin.user = "paimon";

  environment.variables.EDITOR = "nvim"; 

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
   #networking.firewall.allowedUDPPorts = [8890];
  # Or disable the firewall altogether.
   networking.firewall.enable = true;

   networking.firewall.allowedTCPPorts = [ 8096 ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?

}
