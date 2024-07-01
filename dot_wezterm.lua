local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.window_background_opacity = 0.95
config.text_background_opacity = 1.0
config.window_decorations = "RESIZE"

config.font = wezterm.font("CaskaydiaCove Nerd Font")
config.font_size = 22
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.colors = {
	tab_bar = {
		background = "rgba(0,0,0,0)",
	},
}

config.window_background_opacity = 0.9

return config
