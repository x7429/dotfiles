local ret, telescope = pcall(require, "telescope")

vim.cmd [[
	nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
	nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
	nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
	nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]]

telescope.setup{
	defaults = {
		layout_config = {
			prompt_position = "bottom"
		},
		borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
		prompt_prefix = " ",
		hidden = false,
		mappings = {},
	},
	pickers = {
		prompt_title = "Frecency",
		find_files = {
			hidden = true
		}
	},
	extensions = {
	}
}
