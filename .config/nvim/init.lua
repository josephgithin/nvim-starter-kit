-- Bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- This has to be set before initializing lazy
vim.g.mapleader = " "
vim.g.auto_enable_showkeys = true  -- Control whether showkeys auto-starts

-- Initialize lazy with dynamic loading of anything in the plugins directory
require("lazy").setup("plugins", {
   change_detection = {
    enabled = true, -- automatically check for config file changes and reload the ui
    notify = true, -- turn off notifications whenever plugin changes are made
  },
})

-- These modules are not loaded by lazy
require("core.options")
require("core.keymaps")


-- Auto-enable showkeys at startup if enabled
-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     if vim.g.auto_enable_showkeys then
--       vim.cmd("ShowkeysToggle")
--     end
--   end,
-- })
