local status, lualine = pcall(require, 'lualine')
if (not status) then return end


local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}
lualine.setup {
  options = {
    icons_enabled = true,
    theme = bubbles_theme,
    section_separator = { left = '', right = '' },
    component_separator = '|',
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
    lualine_b = { {
      'filename',
      separator = { right = '' },
      file_status = true, -- displays file status
      path = 0, -- 0 = just filename
      symbols = {
        modified = '● ' -- symbol to when file is modified
      }
    },
      { 'branch', separator = { right = '' } } },
    lualine_c = { 'fileformat' },
    lualine_x = {
      { 'diagnostics', sources = { 'nvim_diagnostic' }, symbols = { error = ' ', warn = ' ', info = ' ',
        hint = ' ' } },
      'encoding',
    },
    lualine_y = { { 'filetype', separator = { left = '' } }, { 'progress', separator = { left = '' } } },
    lualine_z = { { 'location', separator = { right = '', left_padding = 2 } } }
  },
  inactive_sections = {
    lualine_a = { { 'filename', file_status = true, path = 1 } },
    lualine_b = {},
    lualine_c = { {
      'filename',
      file_status = true,
      path = 1 -- 1 = relative path
    } },
    lualine_x = { 'location' },
    lualine_y = {},
    lueline_z = {}
  },
  tabline = {},
  extensions = { 'fugitive' }
}
