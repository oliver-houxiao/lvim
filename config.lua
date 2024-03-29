#!/usr/bin/lua
-- Author        : Xiao Hou
-- Email         : contact@librefluids.com
-- Created       : 2023-05-29
-- Last Modified : 2023-08-01
-- SPDX-License-Identifier: Apache-2.0

------------------------------------------------------------------------------
-- General
------------------------------------------------------------------------------
-- Format all filetypes on save
lvim.format_on_save.enabled = true
-- Appearance
lvim.colorscheme = "OceanicNext"

------------------------------------------------------------------------------
-- Generic LSP
------------------------------------------------------------------------------
-- Make sure server will always be installed even if the server is in
-- `skipped_servers` list
lvim.lsp.installer.setup.ensure_installed = {
  -- Python
  "pylsp",
  -- Bash
  "bashls",
  -- Lua
  "lua_ls",
  -- JSON
  "jsonls",
  -- OpenFOAM
  "foam_ls",
  -- VIM
  "vimls",
  -- C/C++
  "clangd",
}

-- Automatic installation of servers
lvim.lsp.installer.setup.automatic_installation = true

-- Add LSPs to `skipped_servers` list
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })

-- Remove LSPs from `skipped_servers` list
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(
  function(server)
    return server ~= "pylsp"
  end,
  lvim.lsp.automatic_configuration.skipped_servers
)

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
