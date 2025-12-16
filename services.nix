{ config, pkgs, inputs, ... }:

{
    # Enable the X11 windowing system.
    services.xserver = {
        enable = true;
        # Enable libinput for general input device support (touchpads, touchscreens, mice)
        
    };
    services.libinput.enable = true;
    services.touchegg.enable = true;

    # Enable the GNOME Desktop Environment.
    services.displayManager.gdm.enable = true;
    services.desktopManager.gnome.enable = true;

    # Configure keymap in X11
    services.xserver.xkb = {
        layout = "de";
        variant = "";
    };


    # Enable CUPS to print documents.
    services.printing.enable = true;
    services.flatpak.enable = true;

    systemd.user.services.orca.enable = false;
    # Enable sound with pipewire.
    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
    };


    services.udev.packages = with pkgs; [
        usb-modeswitch # Make sure the tool is available
        oversteer
        logitech-udev-rules
    ];
    services.udev.extraRules = ''
        # Automatically switch G920 from Xbox to HID mode
        ACTION=="add", SUBSYSTEM=="usb", ATTRS{idVendor}=="046d", ATTRS{idProduct}=="c261", \
        RUN+="${pkgs.usb-modeswitch}/bin/usb_modeswitch -v 046d -p c261 -m 01 -r 01 -C 03 -M '0f00010142'"

        # Ensure Oversteer has permission to access G920 hidraw interface
        KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{idVendor}=="046d", ATTRS{idProduct}=="c262", \
        MODE="0666", TAG+="uaccess", TAG+="udev-acl"
    '';

    services.blueman.enable = true;
    services.mysql = {
        enable = true;
        package = pkgs.mariadb;
    };

}
