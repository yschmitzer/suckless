return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
        local lspconfig = require("lspconfig")
        local mason_lspconfig = require("mason-lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local border = {
            { "╭", "FloatBorder" },
            { "─", "FloatBorder" },
            { "╮", "FloatBorder" },
            { "│", "FloatBorder" },
            { "╯", "FloatBorder" },
            { "─", "FloatBorder" },
            { "╰", "FloatBorder" },
            { "│", "FloatBorder" },
        }
        local handlers_with_border = {
            ["textDocument/hover"] = vim.lsp.handlers.hover,
            ["textDocument/signatureHelp"] = vim.lsp.handlers.signature_help,
        }
        for lsp_method, handler in pairs(handlers_with_border) do
            vim.lsp.handlers[lsp_method] = vim.lsp.with(handler, {
                border = border,
            })
        end
        vim.diagnostic.config({
            float = {
                border = border,
            },
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = " ",
                    [vim.diagnostic.severity.WARN] = " ",
                    [vim.diagnostic.severity.HINT] = "󰠠 ",
                    [vim.diagnostic.severity.INFO] = " ",
                },
            },
        })
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                local opts = { buffer = ev.buf, silent = true }
                opts.desc = "Show signature help"
                vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, opts)
                opts.desc = "Show line diagnostics"
                vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, opts)
                opts.desc = "Show documentation for what is under cursor"
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                opts.desc = "Restart LSP"
                vim.keymap.set("n", "<leader>lr", ":LspRestart<CR>", opts)
            end,
        })
        local capabilities = cmp_nvim_lsp.default_capabilities()

      mason_lspconfig.setup({
        handlers = {
          function(server_name)
            lspconfig[server_name].setup({
              capabilities = capabilities,
            })
          end,
          ["lua_ls"] = function()
            lspconfig["lua_ls"].setup({
              capabilities = capabilities,
              settings = {
                Lua = {
                  diagnostics = {
                    globals = { "vim" },
                  },
                },
              },
            })
          end,
        },
      })

    end,
}
