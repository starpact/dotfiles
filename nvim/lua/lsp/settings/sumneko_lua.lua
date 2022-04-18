vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*.lua" },
  callback = function() vim.lsp.buf.formatting_sync(nil, 1000) end,
})

return {
  cmd = { "lua-language-server", "--preview" },
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}
