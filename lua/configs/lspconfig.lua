require("nvchad.configs.lspconfig").defaults()

local on_attach    = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities
local lspconfig    = require("lspconfig")

-- LSP servers to set up
local servers = {
  "bashls",                            -- bash-language-server
  "clangd",                            -- clangd
  "cmake",                             -- cmake-language-server
  "coffeesense",                       -- coffeesense-language-server
  "cssls",                             -- css-lsp
  "docker_compose_language_service",   -- docker-compose-language-service
  "dockerls",                          -- dockerfile-language-server
  "html",                              -- html-lsp
  "lua_ls",                            -- lua-language-server
  "marksman",                          -- markdown
  "pyright",                           -- Python
  "ruff",                              -- Python linter (ruff-lsp)
}

for _, name in ipairs(servers) do
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  -- Specific configs
  if name == "lua_ls" then
    opts.settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          library = {
            vim.fn.expand("$VIMRUNTIME/lua"),
            vim.fn.stdpath("config") .. "/lua",
          },
        },
      },
    }
  elseif name == "ruff" then
    opts.init_options = {
      settings = {
        -- You can add CLI args/settings here, e.g.:
        -- args = { "--select", "E" },
      },
    }
  end

  lspconfig[name].setup(opts)
end

-- Make sure Mason-managed servers are active
vim.lsp.enable(servers)
