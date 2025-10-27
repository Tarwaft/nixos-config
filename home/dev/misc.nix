{pkgs,...}:
{
    home.packages = (with pkgs; [jdk stockfish cutechess]);
}
