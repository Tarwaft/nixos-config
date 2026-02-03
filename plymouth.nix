{ pkgs, ... }:

{
  boot = {
    plymouth = {
      enable = true;
      theme = "spinner";
      # themePackages = with pkgs; [
      #   (adi1090x-plymouth-themes.override {
      #     selected_themes = [ "rings" ];
      #   })
      # ];
    };

    # AMD: make sure Plymouth has early KMS
    initrd.kernelModules = [ "amdgpu" ];

    # Silent-ish boot
    consoleLogLevel = 0;
    initrd.verbose = false;

    kernelParams = [
      "quiet"
      "splash"                  # <-- important for Plymouth
      "loglevel=3"
      "udev.log_level=3"
      "rd.systemd.show_status=false"
      "rd.udev.log_level=3"
    ];

    loader.timeout = 0;
  };
}
