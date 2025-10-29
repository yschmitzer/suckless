return {
    "rebelot/kanagawa.nvim",
    lazy = false,
    name = "kanagawa",
    priority = 1000,
    config = function()
        require("kanagawa").setup({
            theme = "dragon",
            background = {
                dark = "dragon",
                light = "dragon"
            },
        })
        -- vim.cmd.colorscheme "kanagawa"
        vim.cmd("colorscheme kanagawa")
    end,
}
