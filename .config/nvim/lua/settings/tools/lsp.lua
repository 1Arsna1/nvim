local capabilities = require("blink.cmp").get_lsp_capabilities()
local lspconfig = require("lspconfig")

lspconfig["lua_ls"].setup({ capabilities = capabilities })
lspconfig["bashls"].setup({ capabilities = capabilities })
lspconfig["cssls"].setup({ capabilities = capabilities })
lspconfig["biome"].setup({ capabilities = capabilities })
