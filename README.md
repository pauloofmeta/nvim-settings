# nvim-settings

Configuração pessoal do Neovim com foco em desenvolvimento Go, TypeScript e Rust.

## Requisitos

- Neovim >= 0.12
- Node.js (para markdown-preview)
- Git

## Instalação

```bash
git clone git@github.com:pauloofmeta/nvim-settings.git ~/.config/nvim
```

Abra o Neovim — o [lazy.nvim](https://github.com/folke/lazy.nvim) será instalado automaticamente e em seguida rode:

```
:Lazy sync
```

Para ativar o preview de markdown, rode uma vez:

```
:call mkdp#util#install()
```

## Plugins

| Plugin | Descrição |
|--------|-----------|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Gerenciador de plugins |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Instalador de LSPs |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Configuração de LSP |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | File explorer |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) | Debug (DAP) |
| [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) | UI para o DAP |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status bar |
| [dracula.nvim](https://github.com/Mofiqul/dracula.nvim) | Tema Dracula |
| [vim-floaterm](https://github.com/voldikss/vim-floaterm) | Terminal flutuante |
| [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) | Preview de markdown no browser |

## Atalhos

`<leader>` = `,`

### Geral

| Atalho | Ação |
|--------|------|
| `n` | Abrir/fechar file explorer |
| `Ctrl+s` | Salvar arquivo |
| `Ctrl+j` | Abrir/fechar terminal flutuante |

### Tabs

| Atalho | Ação |
|--------|------|
| `Ctrl+t` | Nova tab |
| `Ctrl+q` | Fechar tab |
| `Tab` | Próxima tab |
| `Shift+Tab` | Tab anterior |

### Busca (Telescope)

| Atalho | Ação |
|--------|------|
| `,ff` | Buscar arquivos |
| `,fg` | Buscar por conteúdo (grep) |

### Debug (DAP)

| Atalho | Ação |
|--------|------|
| `F5` | Continuar execução |
| `F10` | Step over |
| `F11` | Step into |
| `F12` | Step out |
| `Ctrl+b` | Toggle breakpoint |
| `Ctrl+d` | Abrir/fechar UI de debug |
| `F6` | Abrir REPL |

### Markdown

| Atalho | Ação |
|--------|------|
| `,mp` | Abrir/fechar preview no browser |

## LSP configurado

- **Go** — `gopls`
- **TypeScript / JavaScript** — `ts_ls`

Outros LSPs podem ser instalados via `:Mason`.
