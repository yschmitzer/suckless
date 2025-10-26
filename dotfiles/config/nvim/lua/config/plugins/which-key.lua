return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        local o = vim.o
        local wk = require("which-key")

        o.timeout = true
        o.timeoutlen = 500

        wk.add({
            { "<leader>w", group = "Saving" },
            { "<leader>e", group = "Explorer" },
            { "<leader>f", group = "File/Finding" },
            { "<leader>s", group = "Splits" },
            { "<leader>t", group = "Tabs" },
        })
    end,
    opts = {
        -- uses default if empty
    },
}
