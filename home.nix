{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "suraj";
  home.homeDirectory = "/Users/suraj";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "20.09";

  # Load the common configuration
  imports = [ ./config ];

  # Finally set the system specific values
  programs.git.userName = "Suraj Barkale";
  programs.git.userEmail = "suraj.barkale@aacapella.com";
}
