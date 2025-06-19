{pkgs,...}:
{
    home.packages = (with pkgs; [direnv nix-direnv]);
}