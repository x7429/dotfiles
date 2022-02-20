vim.cmd [[
	autocmd VimEnter * set guicursor=a:hor20
	autocmd VimLeave * set guicursor=a:hor20
]]

local options = {
	clipboard = "unnamedplus",
	-- colorcolumn = "120",
	cursorline = false,
	expandtab = false,
	fileencoding = "utf-8",
	ignorecase = true,
	mouse = "a",
	number = true,
	-- scrolloff = 10,
	-- smartindent = true,
	shiftwidth = 4,
	showmode = false,
	-- sidescrolloff = 10,
	swapfile = false,
	tabstop = 4,
	title = true,
	titlestring = "nvim",
}

for k, v in pairs(options) do vim.opt[k] = v end
