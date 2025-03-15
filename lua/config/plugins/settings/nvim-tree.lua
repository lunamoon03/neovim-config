local api = require("nvim-tree.api")
local keymaps = require("util").set_keymaps

require("nvim-tree").setup({})

keymaps({
  -- t = { api.tree.toggle, "Toggle view", { find_file = true } },
  t = { api.tree.toggle, "Toggle view" },
}, { prefix = "<leader>n", group_name = "nvim-tree" })
