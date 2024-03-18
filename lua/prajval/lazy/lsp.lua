return {
    "neovim/nvim-lspconfig",
    dependencies = {
        { "williamboman/mason.nvim",          config = true },
        { "hrsh7th/nvim-cmp" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "j-hui/fidget.nvim",                config = true },
        { "williamboman/mason-lspconfig.nvim" },
    },
    event = "BufReadPre",

    opts = {
        diagnostics = {
            underline = true,
            update_in_insert = false,
            virtual_text = {
                spacing = 4,
                source = "if_many",
                prefix = "●",
            },
            severity_sort = true,
        },
    },
    config = function()
        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
        capabilities.textDocument.completion.completionItem.snippetSupport = true

        local on_attach = function()
            local bufopts = { noremap = true, silent = true, buffer = 0 }
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
            vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, bufopts)
            vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, bufopts)
            vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, bufopts)
            vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, bufopts)
            vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, bufopts)
            vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, bufopts)
            vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, bufopts)
            vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, bufopts)
        end

        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "clangd",
                "gopls",
                "templ",
                "html",
                "emmet_language_server",
            },
            handlers = {
                function(server_name) -- default handler (optional)
                    lspconfig[server_name].setup {
                        capabilities = capabilities,
                        on_attach = on_attach,
                    }
                end,

                ["lua_ls"] = function()
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim", "it", "describe", "before_each", "after_each" },
                                },
                                hint = { enable = true },
                            }
                        }
                    }
                end,

                ["emmet_language_server"] = function()
                    lspconfig.emmet_language_server.setup {
                        capabilities = capabilities,
                        on_attach = on_attach,
                        filetypes = { "html", "css", "template", "javascript", "templ" },
                    }
                end,
            }
        })
    end,
}
