-- TODO: put mappings here so whichkey works when lazy loading

local set_keymaps = require("util").set_keymaps
local lazy_require = require("lazy-require").require_on_exported_call

-- {{{ Neotest
local neotest = lazy_require("neotest")
local neotest_watch = lazy_require("neotest.watch")
local neotest_summary = lazy_require("neotest.summary")
local neotest_output = lazy_require("neotest.summary")
set_keymaps({
  r = { neotest.run, "Run test" },
  -- R = {
  --   function()
  --     neotest_run.run(vim.fn.expand("%"))
  --   end,
  --   "Run file",
  -- },
  -- w = { neotest_watch.toggle, "Watch test" },
  -- W = {
  --   function()
  --     neotest_watch.toggle(vim.fn.expand("%"))
  --   end,
  --   "Watch file",
  -- },
  -- o = { neotest_summary.toggle, "Toggle summary" },
  -- s = { neotest_run.stop, "Stop test" },
  -- a = { neotest_run.attach, "Attach to test" },
  -- t = {
  --   function()
  --     neotest_output.open({ short = true })
  --   end,
  --   "Open test output",
  -- },
  -- T = { neotest_output.open, "Open full output" },
}, { prefix = "<leader>r", group_name = "Neotest " })
-- }}}
