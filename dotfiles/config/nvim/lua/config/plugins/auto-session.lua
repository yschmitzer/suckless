return {
    "rmagatti/auto-session",
    config = function()
        local as = require("auto-session")
        local map = vim.keymap

        as.setup({
            enabled = true,
            root_dir = os.getenv("HOME") .. "/.local/sessiondir",
            auto_create = true,
            auto_save = true,
            auto_restore = false,
        })

        map.set("n", "<leader>ws", "<cmd>AutoSession save<cr>", { desc = "Save session for auto-session in this directory" })
    end,
}
