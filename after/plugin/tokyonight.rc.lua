local status, tokyonight = pcall(require, 'tokyonight')

if (not status) then return end

tokyonight.setup {
  style = 'night',
  transparent = true,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true }
  }
}

vim.cmd [[colorscheme tokyonight-night]]
