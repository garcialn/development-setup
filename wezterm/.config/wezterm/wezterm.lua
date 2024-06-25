-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = {}
config.window_decorations = "TITLE | RESIZE"
config.color_scheme = "Vs Code Dark+ (Gogh)"
config.font = wezterm.font("JetBrains Mono")
config.use_cap_height_to_scale_fallback_fonts = true
config.font_size = 12
config.window_padding = {
	left = 5,
	right = 5,
	top = 5,
	bottom = 5,
}
config.scrollback_lines = 5000
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
return config
