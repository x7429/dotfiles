local ret, telescope = pcall(require, "telescope")

vim.cmd [[
	nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
	nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
	nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
	nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]]

telescope.setup{
	defaults = {
		layout_config = {},
		borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
		hidden = false,
		layout_strategy="horizontal",
		mappings = {},
		mirror = false,
		prompt_position = "bottom",
		prompt_prefix = "  > ",
		winblend = 0
	},
	pickers = {
		find_files = {}
	},
	extensions = {}
}
