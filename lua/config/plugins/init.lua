return {
	-- theme	
	{
		"navarasu/onedark.nvim",
		lazy = true,
		priority = 1000,
		opts = 	require "config.plugins.settings.onedark",
	},
	require "config.plugins.interface",
	require "config.plugins.programming",
	require "config.plugins.qol",
}
