return {
  'stevearc/conform.nvim',
  opts = {
    format_on_save = {
      lsp_fallback = true,
    },
    formatters_by_ft = {
      c = { 'clang_format' },
      cpp = { 'clang_format' },
    },
  },
}
