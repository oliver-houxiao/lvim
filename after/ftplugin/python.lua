#!/usr/bin/lua
-- Author        : Xiao Hou
-- Email         : contact@librefluids.com
-- Created       : 2023-05-29
-- Last Modified : 2023-05-29
-- SPDX-License-Identifier: Apache-2.0

------------------------------------------------------------------------------
-- Fomatters
------------------------------------------------------------------------------
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "isort", filetypes = { "python" } },
  { command = "black", filetypes = { "python" } },
}

------------------------------------------------------------------------------
-- Linters
------------------------------------------------------------------------------
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "pyproject-flake8", filetypes = { "python" } },
  { command = "mypy",             filetypes = { "python" } },
}
