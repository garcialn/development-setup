-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = {}
config.window_decorations = "TITLE | RESIZE"
config.color_scheme = "Vs Code Dark+ (Gogh)"
-- "Catppuccin Mocha (Gogh)"
-- "Catppuccin Mocha"
-- config.window_background_opacity = 0.1
-- config.text_background_opacity = 1
-- config.win32_system_backdrop = "Acrylic"
config.font = wezterm.font("JetBrains Mono")
config.use_cap_height_to_scale_fallback_fonts = true
config.font_size = 12
config.window_padding = {
	left = 5,
	right = 3,
	top = 0,
	bottom = 0,
}
config.scrollback_lines = 5000
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
return config
