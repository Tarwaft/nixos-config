{pkgs,...}:
{
    home.packages = (with pkgs; [lua libgcc gcc pkg-config]);
}