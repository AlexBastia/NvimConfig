-- PDF Viewer:
vim.g['vimtex_view_method'] = 'zathura'
vim.g['vimtex_quickfix_mode'] = 0

-- Conceal level
vim.wo.conceallevel = 2

-- Auto Indent
vim.g['vimtex_indent_enabled'] = 0

-- Syntax highlighting
vim.g['vimtex_syntax_enabled'] = 1


vim.g['vimtex_log_ignore'] = ({
  'Underfull',
  'Overfull',
  'specifier changed to',
  'Token not allowed in a PDF string',
})

vim.g['vimtex_context_pdf_viewer'] = 'okular'

vim.g['vimtex_complete_enabled'] = 1
