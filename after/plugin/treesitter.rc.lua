local status, ts = pcall(require, 'nvim-treesitter.configs')

if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'tsx',
    'astro',
    'javascript',
    'lua',
    'json',
    'css',
    'markdown',
    'python',
    'typescript',
    'markdown',
    'html'
  },
  autotag = {
    enable = true,
  }
}

vim.api.nvim_command [[autocmd BufRead,BufEnter *.astro set filetype=astro]]
