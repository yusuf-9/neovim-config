return {
  'Isrothy/neominimap.nvim',
  version = "v3.*.*",
  enabled = true,
  lazy = false,  -- No need for lazy loading
  init = function()
    -- Set some global options before the plugin loads
    vim.opt.wrap = false
    vim.opt.sidescrolloff = 36 -- Large value for better scrolling in floating mode

    -- User-specific configuration for Neominimap
    vim.g.neominimap = {
      auto_enable = true,  -- Automatically enable minimap
    }
  end,
  config = function()
    -- Setup the minimap plugin
    local neominimap = require('neominimap')

    -- Configure the minimap here (keybindings are excluded)
    -- If you want additional setup or custom commands, add them here

    -- You can even trigger functions like this:
    -- neominimap.toggle()
end
}

