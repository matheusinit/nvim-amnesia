local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.init_lsp_saga {
  server_filetype_map = {}
}

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<cr>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<cr>', opts)
vim.keymap.set('n', '<C-z>', '<Cmd>Lspsaga code_action<cr>', opts)
vim.keymap.set('n', '<C-l>', '<Cmd>Lspsaga show_line_diagnostics<cr>', opts)
vim.keymap.set('n', '<C-k>', '<Cmd>Lspsaga show_cursor_diagnostics<cr>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<cr>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<cr>', opts)
vim.keymap.set('t', '<C-c>', '<Cmd>Lspsaga close_floaterm<cr>', opts)