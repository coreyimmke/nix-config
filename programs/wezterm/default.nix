
{ config, pkgs, ... }:

{
  programs.wezterm = {
    enable = true;
    enableBashIntegration = true;
  };

  xdg.configFile."wezterm/wezterm.lua" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nix-config/programs/wezterm/config/wezterm.lua";
  };
  
}
