vim.lsp.config('ts_ls', {
	filetypes = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },
	root_markers = { 'tsconfig.json', 'package.json', '.git' },
})

vim.lsp.enable('ts_ls')
