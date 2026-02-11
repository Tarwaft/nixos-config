{
    programs.bash = {
        enable = false;
        enableCompletion = true;
        initExtra = builtins.readFile ./bashrc;
    };
}
