{ config, pkgs, lib, ... }:

{
  programs.git = {
    enable = true;
    userName = "Corey Immke";
  };
}
