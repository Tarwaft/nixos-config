{pkgs, inputs, system, ...}:
{
  # home.nix
  imports = [
    #inputs.zen-browser.homeModules.beta
    inputs.zen-browser.homeModules.twilight
    #inputs.zen-browser.homeModules.twilight-official
  ];

  programs.zen-browser = {
    enable = true;
    suppressXdgMigrationWarning = true;
    policies = {
      DisableAppUpdate = true;
      DisableTelemetry = true;
      # find more options here: https://mozilla.github.io/policy-templates/
    };
  };
}
