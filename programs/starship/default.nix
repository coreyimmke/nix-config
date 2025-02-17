{ config, pkgs, lib, ... }:

{
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;

    settings = {
      add_newline = true;
      palette = "catppuccin_macchiato";

      format = lib.concatStrings [
        "$username"
        "$directory"
        "$git_branch"
        "$git_state"
        "$git_status"
        "$fill"
        "$elixir"
        "$lua"
        "$nodejs"
        "$python"
        "$terraform"
        "$nix_shell"
        "$cmd_duration"
        "$line_break"
        "$time"
        "$character"
      ];

      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[➜](bold red)";
      };

      time = {
        disabled = false;
        format = "[$time]($style) ";
      };

      fill = {
        symbol = " ";
      };

      elixir = {
        format = "[$symbol($version (OTP $otp_version) )]($style) ";
      };

      lua = {
        format = "[$symbol($version )]($style) ";
      };

      nodejs = {
        format = "[$symbol($version )]($style) ";
      };

      python = {
        format = "[$symbol($version )(($virtualenv) )]($style) ";
      };

      terraform = {
        format = "[$symbol$workspace]($style) ";
      };

      nix_shell = {
        format = "[$symbol$state( ($name))]($style) ";
      };

      cmd_duration = {
        format = "[$duration]($style) ";
      };

      palettes = {
        catppuccin_macchiato = {
          rosewater = "#f4dbd6";
          flamingo = "#f0c6c6";
          pink = "#f5bde6";
          mauve = "#c6a0f6";
          red = "#ed8796";
          maroon = "#ee99a0";
          peach = "#f5a97f";
          yellow = "#eed49f";
          green = "#a6da95";
          teal = "#8bd5ca";
          sky = "#91d7e3";
          sapphire = "#7dc4e4";
          blue = "#8aadf4";
          lavender = "#b7bdf8";
          text = "#cad3f5";
          subtext1 = "#b8c0e0";
          subtext0 = "#a5adcb";
          overlay2 = "#939ab7";
          overlay1 = "#8087a2";
          overlay0 = "#6e738d";
          surface2 = "#5b6078";
          surface1 = "#494d64";
          surface0 = "#363a4f";
          base = "#24273a";
          mantle = "#1e2030";
          crust = "#181926";
        };
      };
    };
  };
}
