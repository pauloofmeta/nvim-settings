require'nvim-treesitter.configs'.setup{
	-- parsers
	ensure_installed = {'go', 'lua', 'rust'},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
