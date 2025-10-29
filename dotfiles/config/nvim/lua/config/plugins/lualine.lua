return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local ls = require("lazy.status")
        require("lualine").setup({
            options = {
                theme = "kanagawa",
            },
            sections = {
                lualine_x = {
                    {
                        ls.updates,
                        cond = ls.has_updates,
                        color = { fg = "#fe5050" },
                    },
                    { "encoding" },
                    { "fileformat" },
                    { "filetype" },
                },
            },
        })
    end,
}
