{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # ... your existing packages
    kdePackages.ark # Add this line
    # It's also good to have common compression tools installed for Ark to use
    zip
    unzip
    gzip
    bzip2
    xz # For .tar.xz
    p7zip # For .7z files
  ];

  # ... rest of your configuration
}
