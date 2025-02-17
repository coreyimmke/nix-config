{ config, pkgs, ... }:

{
  imports = [
    ../../programs/bash
    ../../programs/git
    ../../programs/nvim
    ../../programs/starship
    ../../programs/wezterm
  ];

  home.username = "corey";
  home.homeDirectory = "/home/corey";

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    PAGER = "less";
  };

  home.packages = with pkgs; [
    jq
    which
    tree
    unzip
    xclip
    zip
  ];

  home.stateVersion = "24.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
