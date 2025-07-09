require("nvchad.configs.lspconfig").defaults()

local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")

-- Language servers to set up
local servers = {
  "bashls",              -- bash-language-server
  "clangd",              -- C/C++
  "cmake",               -- cmake-language-server
  "coffeesense",         -- coffeesense-language-server
  "cssls",               -- css-lsp
  "docker_compose_language_service", -- docker-compose
  "dockerls",            -- dockerfile-language-server
  "html",                -- html-lsp
  "lua_ls",              -- lua-language-server
  "marksman",            -- markdown
  "pyright",             -- Python
  "ruff",            -- Python linter
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
