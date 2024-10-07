local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- {{{ Terminals
-- Stolen :)
-- Automatically go into insert mode and remove line numbers
autocmd({ "TermOpen" }, {
	callback = function()
		vim.o.number = false
		vim.o.relativenumber = false
		vim.cmd('startinsert')
	end,
})
-- }}


--- {{{ Toggle relative numbers
-- Toggle relative numbers, on for insert, off by default.
augroup("ToggleRNu", { clear = true })
autocmd({ "InsertEnter" }, {
  -- command = "setlocal norelativenumber",
  callback = function()
    if vim.o.number then
      vim.o.relativenumber = false
    end
  end,
  group = "ToggleRNu",
})
autocmd({ "InsertLeave" }, {
  callback = function()
    if vim.o.number then
      vim.o.relativenumber = true
    end
  end,
  group = "ToggleRNu",
})
-- }}}
