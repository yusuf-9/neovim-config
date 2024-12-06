require("core.options")
require("core.key-bindings")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Specify plugins
require("lazy").setup({
    require("plugins.neo-tree"),
    require("plugins.auto-pairs"),
    require("plugins.tree-sitter"),
    require("plugins.theme"),
    require("plugins.buffer-line"),
    require("plugins.lua-line"),
    require("plugins.commenter"),
    require("plugins.minimap"),
    require("plugins.gitsigns"),
    -- require("plugins.lsp"),
    -- require("plugins.autocompletion"),
    -- require("plugins.telescope"),
    -- require("plugins.none-ls"),
})

