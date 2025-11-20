{pkgs,...}:
{
    home.packages = (with pkgs; [jdk stockfish cutechess protontricks wget wget2 git-filter-repo arena]);
}
