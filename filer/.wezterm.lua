-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
config.font = wezterm.font 'JetBrains Mono'
config.color_scheme = 'Catppuccin Frappé (Gogh)'
local warn_about_missing_glyphs = false

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 15

-- Keybinds
local act = wezterm.action

-- Set a leader key
config.leader = {
  key = 'a',
  mods = 'CTRL',
  timeout_milliseconds = 1000
}

-- split horizontal
config.keys = {
  -- split horizontal
  {
    key = "i",
    mods = 'CTRL',
    action = act.SplitHorizontal({ domain = 'CurrentPaneDomain' }),
  },
  -- split vertical
  {
    key = "o",
    mods = 'CTRL',
    action = act.SplitVertical({ domain = 'CurrentPaneDomain' }),
  },

  -- move to pane in directions
  { -- left
    key = "h",
    mods = 'CTRL',
    action = act.ActivatePaneDirection('Left'),
  },
  { -- right
    key = "l",
    mods = 'CTRL',
    action = act.ActivatePaneDirection('Right'),
  },
  { -- up
    key = "k",
    mods = 'CTRL',
    action = act.ActivatePaneDirection('Up'),
  },
  { -- down
    key = "j",
    mods = 'CTRL',
    action = act.ActivatePaneDirection('Down'),
  },

  -- resize panes
  { -- left
    key = "h",
    mods = 'CTRL|SHIFT',
    action = act.AdjustPaneSize { "Left", 1 },
  },
  { -- right
    key = "l",
    mods = 'CTRL|SHIFT',
    action = act.AdjustPaneSize { "Right", 1 },
  },
  { -- up
    key = "k",
    mods = 'CTRL|SHIFT',
    action = act.AdjustPaneSize { "Up", 1 },
  },
  { -- down
    key = "j",
    mods = 'CTRL|SHIFT',
    action = act.AdjustPaneSize { "Down", 1 },
  },

  -- scroll to top of prompt
  {
    key = "'", mods = "CTRL",
    action = wezterm.action_callback(function(window, pane)
      -- avoid running in tui programs like nvim that don't have scrollback
      if pane:is_alt_screen_active() then
        return
      end

      -- scroll to bottom in case you aren't already
      window:perform_action(wezterm.action.ScrollToBottom, pane)

      -- get the current height of the viewport
      local height = pane:get_dimensions().viewport_rows

      -- build a string of new lines equal to the viewport height
      local blank_viewport = string.rep("\r\n", height)

      -- inject those new lines to push the viewport contents into the scrollback
      pane:inject_output(blank_viewport)

      -- send an escape sequence to clear the viewport (CTRL-L)
      pane:send_text('\x0c')
    end)
  },
}

-- Finally, return the configuration to wezterm:
return config
