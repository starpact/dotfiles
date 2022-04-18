vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = {
    "*.json",
    "*.yml",
    "*.yaml",
    "*.toml",
    "*.lua",
    "*.html",
    "*.css",
    "*.js",
    "*.jsx",
    "*.ts",
    "*.tsx",
  },
  command = "setlocal ts=2 sw=2",
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.go" },
  command = "setlocal expandtab!",
})

-- NvimTree auto close.
vim.cmd([[
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])

-- WSL.
vim.cmd([[
if has('wsl')
  augroup Yank
    autocmd!
    autocmd TextYankPost * if v:event.operator ==# 'y' | call system('/mnt/c/windows/system32/clip.exe ', @0)
    augroup END
endif
]])
