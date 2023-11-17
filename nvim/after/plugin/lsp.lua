local lsp = require('lsp-zero').preset({
  name = 'recommended',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'rust_analyzer',
})

lsp.setup()

require('lspconfig').clangd.setup{
  on_attach = on_attach,
  cmd = {
    "clangd",
    "--background-index",
    "--pch-storage=memory",
    "--clang-tidy",
    "--suggest-missing-includes",
    "--all-scopes-completion",
    "--pretty",
    "--header-insertion=never",
    "-j=4",
    "--inlay-hints",
    "--header-insertion-decorators",
  },
  filetypes = {"c", "cpp", "objc", "objcpp"},
  -- root_dir = utils.root_pattern("compile_commands.json", "compile_flags.txt", ".git")
  init_option = { fallbackFlags = {  "-std=c++2a"  } }
}

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = true,
  underline = true,
  severity_sort = false,
  float = true,
})

