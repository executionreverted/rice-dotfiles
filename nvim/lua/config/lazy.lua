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

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import/override with your plugins
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.ui.mini-animate" },
    {
      "nvim-lualine/lualine.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
        require("lualine").setup({
          options = {
            theme = {
              normal = {
                a = { fg = "#14091e", bg = "#CE67F0", gui = "bold" },
                b = { fg = "#E1D6F8", bg = "#201430" },
                c = { fg = "#A4D2EC", bg = "#14091e" },
              },
              insert = {
                a = { fg = "#14091e", bg = "#87ff5f", gui = "bold" },
              },
              visual = {
                a = { fg = "#14091e", bg = "#DB6088", gui = "bold" },
              },
              replace = {
                a = { fg = "#14091e", bg = "#D99145", gui = "bold" },
              },
              command = {
                a = { fg = "#14091e", bg = "#E6BB85", gui = "bold" },
              },
              inactive = {
                a = { fg = "#875faf", bg = "#14091e" },
                b = { fg = "#9DAFD1", bg = "#14091e" },
                c = { fg = "#3B3847", bg = "#14091e" },
              },
            },
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
          },
        })
      end,
    },
    {
      "pmizio/typescript-tools.nvim",
      dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
      opts = {},
    },
    {
      "alexghergh/nvim-tmux-navigation",
      config = function()
        local nvim_tmux_nav = require("nvim-tmux-navigation")

        nvim_tmux_nav.setup({
          disable_when_zoomed = true, -- defaults to false
        })

        vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
        vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
        vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
        vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
        vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
        vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
      end,
    },
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  -- install = { colorscheme = { "tokyonight", "habamax" } },
  checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false, -- notify on update
  }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
