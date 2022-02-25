local packer = require 'packer'
packer.init{
	ensure_dependencies = true, -- Should packer install plugin dependencies?
	-- package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack'),
	-- compile_path = util.join_paths(vim.fn.stdpath('config'), 'plugin', 'packer_compiled.lua'),
	plugin_package = 'packer', -- The default package for plugins
	max_jobs = nil, -- Limit the number of simultaneous jobs. nil means no limit
	auto_clean = true, -- During sync(), remove unused plugins
	compile_on_sync = true, -- During sync(), run packer.compile()
	-- disable_commands = false, -- Disable creating commands
	-- opt_default = false, -- Default to using opt (as opposed to start) plugins
	-- transitive_opt = true, -- Make dependencies of opt plugins also opt by default
	-- transitive_disable = true, -- Automatically disable dependencies of disabled plugins
	auto_reload_compiled = true, -- Automatically reload the compiled file after creating it.
	
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

local use = packer.use
packer.reset()

packer.startup(function()
	use{
		'wbthomason/packer.nvim',
		opt = false
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
end)
