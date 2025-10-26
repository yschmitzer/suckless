return {
    "rcarriga/nvim-notify",
    config = function()
        require("notify").setup({
            background_colour = "#000000",
            timeout = 2500,
            top_down = false,
        })
    end,
}
