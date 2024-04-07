#!/usr/bin/lua
-- Author        : Xiao Hou
-- Email         : hou.xiao@pm.me
-- Created       : 2024-04-07
-- Last Modified : 2024-04-07
-- SPDX-License-Identifier: Apache-2.0

-------------------------------------------------------------------------------
-- Fomatters
-------------------------------------------------------------------------------
local opts = {}
-- Re-use common lsp configurations (keybindings, buffer-highlight and cmp
-- integration)
opts = require("lvim.lsp").get_common_opts()
require('lspconfig').julials.setup(opts)
