#!/usr/bin/lua
-- Author        : Xiao Hou
-- Email         : hou.xiao@pm.me
-- Created       : 2023-05-29
-- Last Modified : 2024-04-16
-- SPDX-License-Identifier: Apache-2.0

-------------------------------------------------------------------------------
-- General
-------------------------------------------------------------------------------
-- Format all filetypes on save
lvim.format_on_save.enabled = true
-- Appearance
lvim.colorscheme = "catppuccin-mocha"

-------------------------------------------------------------------------------
-- Generic LSP
-------------------------------------------------------------------------------
-- Make sure server will always be installed even if the server is in
-- `skipped_servers` list
lvim.lsp.installer.setup.ensure_installed = {
  -- Bash
  "bashls",
  -- C/C++
  "clangd",
  -- Fortran
  "fortls",
  -- JSON
  "jsonls",
  -- Julia
  "julials",
  -- Lua
  "lua_ls",
  -- OpenFOAM
  "foam_ls",
  -- Python
  "pylsp",
  -- VIM
  "vimls",
}

-- Automatic installation of servers
lvim.lsp.installer.setup.automatic_installation = true

-- Add LSPs to `skipped_servers` list
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers,
  { "pyright" })

-- Remove LSPs from `skipped_servers` list
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(
  function(server)
    return server ~= "pylsp"
  end,
  lvim.lsp.automatic_configuration.skipped_servers
)

-------------------------------------------------------------------------------
-- Plugins
-------------------------------------------------------------------------------
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
  -- Julia LaTeX
  -- { "JuliaEditorSupport/julia-vim" },
  -- Python env switching
  { "AckslD/swenv.nvim" },
  { "stevearc/dressing.nvim" },
  -- Theme
  { "catppuccin/nvim" },
}

-------------------------------------------------------------------------------
-- System
-------------------------------------------------------------------------------
vim.g.treesitter_setting = true
-- NeoVim Python path
vim.g.python3_host_prog = os.getenv("HOME") .. "/.lvim-venv/bin/python"
