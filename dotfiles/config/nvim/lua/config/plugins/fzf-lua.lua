return {
    "ibhagwan/fzf-lua",
    config = function()
        local actions = require("fzf-lua.actions")
        local map = vim.keymap
        require("fzf-lua").setup({
            grep = {
                actions = {
                    ["ctrl-g"] = { actions.toggle_ignore },
                    ["ctrl-h"] = { actions.grep_lgrep },
                },
            },
        })
        map.set("n", "<leader>r", require("fzf-lua").resume, { desc = "Resume" })

        map.set("n", "<leader>ff", require("fzf-lua").files, { desc = "Find Files" })
        map.set("n", "<leader>fs", require("fzf-lua").live_grep_glob, { desc = "Find String" })

        map.set("n", "<leader>fd", require("fzf-lua").lsp_definitions, { desc = "LSP Definitions" })
        map.set("n", "<leader>fr", require("fzf-lua").lsp_references, { desc = "LSP References" })
        map.set("n", "<leader>fl", require("fzf-lua").lsp_declarations, { desc = "LSP Declarations" })
        map.set("n", "<leader>fi", require("fzf-lua").lsp_implementations, { desc = "LSP Implementations" })

        map.set("n", "<leader>fp", require("fzf-lua").lsp_incoming_calls, { desc = "LSP Incoming Calls" })
        map.set("n", "<leader>fn", require("fzf-lua").lsp_outgoing_calls, { desc = "LSP Outgoing Calls" })

        map.set("n", "<leader>fa", require("fzf-lua").lsp_code_actions, { desc = "LSP Code Actions" })
        map.set("n", "<leader>fx", require("fzf-lua").lsp_document_diagnostics, { desc = "LSP Document Diagnostics" })
        map.set("n", "<leader>fp", require("fzf-lua").lsp_workspace_diagnostics, { desc = "LSP Workspace Diagnostics" })

        map.set("n", "<leader>fg", function()
            require("fzf-lua").git_bcommits({})
        end, { desc = "Git History Diffview" })
    end,
}
