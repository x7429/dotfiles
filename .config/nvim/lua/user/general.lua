vim.cmd [[
	autocmd VimEnter * set guicursor=a:hor20
	autocmd VimLeave * set guicursor=a:hor20
]]

local opts = { noremap = true, silent = false }
local keymap = vim.api.nvim_set_keymap

keymap("", "<TAB>e", ":tabedit<Space>", opts)
keymap("", "<TAB>c", ":tabclose<CR>", opts)

keymap("", "<TAB>n", ":tabnext<CR>", opts)
keymap("", "<TAB>p", ":tabprev<CR>", opts)

keymap("", "<TAB>f", ":tabfirst<CR>", opts)
keymap("", "<TAB>l", ":tablast<CR>", opts)
keymap("", "<TAB>m", ":tabm<Space>", opts)

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
