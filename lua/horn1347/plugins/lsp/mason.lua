local mason_status, mason = pcall(require, "mason")
if not maston_status then
  print("Mason not loaded")
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not maston_lspconfig_status then
  print("Mason_lsp_config not loaded")
  return
end

mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    "angularls",
    "asm_lsp",
    "bashls",
    "clangd",
    "cmake",
    "cssls",
    "dockerls",
    "docker_compose_language_service",
    "golangci_lint_ls",
    "html",
    "jsonls",
    "jdtls",
    "tsserver",
    "ltex",
    "lua_ls",
    "marksman",
    "pylsp",
    "sqlls",
    "lemminx",
    "yamlls",
    "zls",
    "rust_analyzer"
  }
})


