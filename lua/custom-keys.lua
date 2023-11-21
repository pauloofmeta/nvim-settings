-- fetch keymap function
local map = vim.api.nvim_set_keymap

-- Change leader key
vim.g.mapleader = ','

-- Map the key n to run the comma :NvimTreeToogle
map('n', 'n', [[:NvimTreeToggle<CR>]], {})

-- CTRL+s to save the file
map('n', '<C-s>', [[:w<CR>]], {})

-- Nvim-dap keymappings
map('n', '<F5>', [[:lua require'dap'.continue()<CR>]], {})
map('n', '<C-b>', [[:lua require'dap'.toggle_breakpoint()<CR>]], {})
-- Press CTRL + i to set Logpoint
map('n', '<C-l>', [[:lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log Point Msg: '))<CR>]], {})
-- Press f10 to step over
map('n',  '<F10>', [[:lua require'dap'.set_over()<CR>]], {})
map('n',  '<F11>', [[:lua require'dap'.set_into()<CR>]], {})
map('n',  '<F12>', [[:lua require'dap'.set_out()<CR>]], {})
map('n',  '<F6>', [[:lua require'dap'.repl.open()<CR>]], {})

-- Press CTRL + d to debugmode and remove NvimTreeToggle
map('n', '<C-d>', [[:NvimTreeToggle<CR> :lua require'dapui'.toggle()<CR>]], {})

-- Toggle Terminal
map('n', '<C-j>', [[:FloatermToggle<CR>]], {})
