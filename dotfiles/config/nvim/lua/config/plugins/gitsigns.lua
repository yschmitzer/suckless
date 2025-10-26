return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        on_attach = function(bufnr)
            local gs = package.loaded.gitsigns
            local function map(mode, l, r, desc)
                vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
            end

            map("n", "<leader>gb", function() gs.blame_line({ full = true }) end, "Toggle current blame")
            map("n", "<leader>gc", gs.toggle_current_line_blame, "Toggle line blame")
            map("n", "<leader>gd", gs.diffthis, "Diff this")
        end,
    },
}
