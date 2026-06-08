-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		'git', 'clone', '--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable',
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({

	-- LSP
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',

	-- Code completion
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-nvim-lua',
	'hrsh7th/cmp-nvim-lsp-signature-help',
	'hrsh7th/cmp-vsnip',
	'hrsh7th/cmp-path',
	'hrsh7th/vim-vsnip',
	'hrsh7th/cmp-buffer',

	-- File explorer
	{
		'nvim-tree/nvim-tree.lua',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},

	-- DAP (debugging)
	'mfussenegger/nvim-dap',
	{
		'rcarriga/nvim-dap-ui',
		dependencies = {
			'mfussenegger/nvim-dap',
			'nvim-neotest/nvim-nio',
		},
	},

	-- Theme
	'Mofiqul/dracula.nvim',

	-- Treesitter (v0.9 — usa parsers pré-compilados, não requer tree-sitter CLI)
	{
		'nvim-treesitter/nvim-treesitter',
		tag = 'v0.9.3',
		build = ':TSUpdate',
		main = 'nvim-treesitter.configs',
		opts = {
			ensure_installed = { 'go', 'lua', 'rust', 'markdown', 'markdown_inline' },
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				disable = { 'markdown', 'markdown_inline' },
			},
		},
	},

	-- Telescope
	{
		'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' },
	},

	-- Status bar
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},

	-- Terminal
	'voldikss/vim-floaterm',

	-- Markdown preview no browser
	{
		'iamcco/markdown-preview.nvim',
		build = function() vim.fn['mkdp#util#install']() end,
		ft = { 'markdown' },
	},

})
