vim.g.mapleader = ','
require('plugins')
require('file-explorer')
require('mason-config')
require('gopls')
require('tsls')
require('code-completion')
require('custom-keys')
require('debugging')
require('styling')
require('file-finder')
require('statusbar')

-- Desativa o treesitter highlighter nativo do Neovim 0.12 para markdown
-- (bug: languagetree.lua:215 range nil com fenced code blocks)
vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'markdown' },
	callback = function(ev)
		vim.treesitter.stop(ev.buf)
	end,
})
