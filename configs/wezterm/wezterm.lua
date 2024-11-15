local wezterm = require("wezterm")
local config = wezterm.config_builder()
local keymaps = require("lua.keymaps")

wezterm.log_info(keymaps.gato())

config.color_scheme = "catppuccin-mocha"

-- Fonts
config.font = wezterm.font("IosevkaTerm Nerd Font", { weight = "Regular", italic = false })
config.font_size = 13

-- Keymaps tmux like
config.leader = { key = "a", mods = "CTRL", time_milliseconds = 2000 }
config.keys = {
	{
		key = "F11",
		action = wezterm.action.ToggleFullScreen,
	},
	-- Tabs
	{
		mods = "LEADER",
		key = "c",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		mods = "LEADER",
		key = "x",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		mods = "LEADER",
		key = "n",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		mods = "LEADER",
		key = "p",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	-- Panes
	{
		mods = "LEADER",
		key = "'",
		action = wezterm.action.SplitPane({
			direction = "Right",
			size = { Percent = 50 },
		}),
	},
	{
		mods = "LEADER",
		key = ";",
		action = wezterm.action.SplitPane({
			direction = "Down",
			size = { Percent = 50 },
		}),
	},
	{
		mods = "LEADER",
		key = "l",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		mods = "LEADER",
		key = "k",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		mods = "LEADER",
		key = "j",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		mods = "LEADER",
		key = "h",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		mods = "ALT",
		key = "l",
		action = wezterm.action.AdjustPaneSize({ "Right", 5 }),
	},
	{
		mods = "ALT",
		key = "k",
		action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
	},
	{
		mods = "ALT",
		key = "j",
		action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
	},
	{
		mods = "ALT",
		key = "h",
		action = wezterm.action.AdjustPaneSize({ "Left", 5 }),
	},
	-- Workspaces
	{
		mods = "LEADER",
		key = "s",
		action = wezterm.action.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }),
	},
	-- TODO: Try to set ctrl + n or p to move around workspace selection
}

for i = 1, 9 do
	table.insert(config.keys, {
		mods = "LEADER",
		key = tostring(i),
		action = wezterm.action.ActivateTab(i - 1),
	})
end

-- Tabs
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.tab_and_split_indices_are_zero_based = false

return config
