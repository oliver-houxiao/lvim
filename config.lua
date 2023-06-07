#!/usr/bin/lua
-- Author        : Xiao Hou
-- Email         : contact@librefluids.com
-- Created       : 2023-05-29
-- Last Modified : 2023-05-29
-- SPDX-License-Identifier: Apache-2.0

------------------------------------------------------------------------------
-- General
------------------------------------------------------------------------------
-- Format on save
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = {
  "*.py",
  "*.lua",
}
-- Appearance
lvim.colorscheme = "OceanicNext"

------------------------------------------------------------------------------
-- Generic LSP
------------------------------------------------------------------------------
-- Make sure server will always be installed even if the server is in
-- `skipped_servers` list
lvim.lsp.installer.setup.ensure_installed = {
  -- Python
  "pyright",
  -- Bash
  "bashls",
  -- Lua
  "lua_ls",
  -- JSON
  "jsonls",
}

-- Automatic installation of servers
lvim.lsp.installer.setup.automatic_installation = true

------------------------------------------------------------------------------
-- Plugins
------------------------------------------------------------------------------
lvim.plugins = {
  -- AI completion
  { "Exafunction/codeium.vim" },
  -- Annotation
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  -- CSV highlighting
  { "mechatroner/rainbow_csv" },
  -- Python env switching
  { "AckslD/swenv.nvim" },
  { "stevearc/dressing.nvim" },
  -- Theme
  { "mhartington/oceanic-next" },
}
