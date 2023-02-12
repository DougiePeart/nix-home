{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "dougie";
  home.homeDirectory = "/home/dougie";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home = {
    packages = with pkgs; [
      ####
      # Programs
      git
      ####

      # Shells
      zsh
      ####

      # Editors
      neovim
      ####

      # Terminals
      alacritty
      ####

      # Desktop

      ####
    ];
  };

  programs.git = {
    enable = true;
    userName = "Dougie Peart";
    userEmail = "admin@dougiepeart.co.uk";
    extraConfig = {
      core = {
        editor = "emacs";
      };
    };
  };
}
