{pkgs, ...}:
{
    home.packages = (with pkgs; [signal-desktop]);
    xdg.desktopEntries.signal = {
    name = "Signal";
    comment = "Private messaging, now on the desktop.";
    exec = "signal-desktop --password-store=\"gnome-libsecret\" %U";
    icon = "signal";
    terminal = false;
    type = "Application";
    categories = [ "Network" "InstantMessaging" ];
  };


}
