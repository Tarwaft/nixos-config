{pkgs,...}:
{
    home.packages = (with pkgs; [lua libgcc gcc pkg-config gdb cmake gnumake]);
}