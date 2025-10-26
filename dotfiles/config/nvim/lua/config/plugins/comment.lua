return {
    "numToStr/Comment.nvim",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    dependencies = {
        "JoosepAlviste/nvim-ts-context-commentstring",
    },
    config = function()
        local cs = require("ts_context_commentstring.integrations.comment_nvim")

        require("Comment").setup({
            pre_hook = cs.create_pre_hook(),
            toggler = {
                line = "<leader>cl",
                block = "<leader>cb",
            },
            opleader = {
                line = "<leader>cl",
                block = "<leader>cb",
            },
        })
    end,
}
