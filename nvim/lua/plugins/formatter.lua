local ok, formatter = pcall(require, "formatter")
if not ok then
  return
end

formatter.setup({
  filetype = {
    python = { require("formatter.filetypes.python").black },
    yaml = { require("formatter.filetypes.yaml").prettier },
  }
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.py", "*.yml", "*.yaml" },
  command = "FormatWrite",
})
