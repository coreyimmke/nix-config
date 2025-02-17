local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.enable_wayland = false

config.color_scheme = "Catppuccin Macchiato"
config.window_background_opacity = 0.85
config.font = wezterm.font("FiraCode Nerd Font")

config.window_decorations = "RESIZE"

return config
