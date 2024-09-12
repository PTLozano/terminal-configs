-- Pull in the wezterm API
local wezterm = require("wezterm")

local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()
config = {
	initial_cols = 140,
	initial_rows = 34,
	font = wezterm.font("MesloLGS Nerd Font Mono", { weight = "Bold" }),
	font_size = 18,
	window_decorations = "RESIZE",
	window_background_opacity = 0.9,
	macos_window_background_blur = 10,
	-- native_macos_fullscreen_mode = true,
	check_for_updates = false,
	tab_bar_at_bottom = false,
	enable_tab_bar = false,
	-- window_padding = {
	--     left = 30,
	--     right = 30,
	--     top = 30,
	--     bottom = 30
	-- },
	color_scheme = "Tokyo Night",
	keys = {
		{
			key = "S",
			mods = "CTRL|SHIFT",
			action = wezterm.action.PaneSelect,
		},
		{
			key = "H",
			mods = "CMD|SHIFT",
			action = act.ActivatePaneDirection("Left"),
		},
		{
			key = "J",
			mods = "CMD|SHIFT",
			action = act.ActivatePaneDirection("Down"),
		},
		{
			key = "K",
			mods = "CMD|SHIFT",
			action = act.ActivatePaneDirection("Up"),
		},
		{
			key = "L",
			mods = "CMD|SHIFT",
			action = act.ActivatePaneDirection("Right"),
		},
		{
			key = "LeftArrow",
			mods = "CTRL|SHIFT",
			action = act.ActivatePaneDirection("Left"),
		},
		{
			key = "RightArrow",
			mods = "CTRL|SHIFT",
			action = act.ActivatePaneDirection("Right"),
		},
		{
			key = "UpArrow",
			mods = "CTRL|SHIFT",
			action = act.ActivatePaneDirection("Up"),
		},
		{
			key = "DownArrow",
			mods = "CTRL|SHIFT",
			action = act.ActivatePaneDirection("Down"),
		},
		{
			key = "D",
			mods = "CMD|SHIFT",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "d",
			mods = "CMD",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "k",
			mods = "CMD|OPT",
			action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
		},
	},
	window_frame = {
		-- font = wezterm.font {family = "Roboto", weight = "Bold"},
		-- font = wezterm.font { family = 'Hack', weight = 'Bold' },
		font_size = 16.0,
		-- The overall background color of the tab bar when
		-- the window is focused
		active_titlebar_bg = "#011626",
		-- The overall background color of the tab bar when
		-- the window is not focused
		inactive_titlebar_bg = "#011626",
	},
}

-- and finally, return the configuration to wezterm
return config
