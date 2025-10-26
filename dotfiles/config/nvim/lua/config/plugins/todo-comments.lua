return {
    "folke/todo-comments.nvim",
    lazye = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local todo_comments = require("todo-comments")
        local map = vim.keymap

        map.set("n", "<leader>jtn", function()
            todo_comments.jump_next()
        end, { desc = "Next todo comment" })
        map.set("n", "<leader>jtp", function()
            todo_comments.jump_prev()
        end, { desc = "Previous todo comment" })
        map.set("n", "<leader>ft", function()
            require("todo-comments.fzf").todo({ keywords = { "TODO", "FIX", "FIXME" } })
        end, { desc = "Find TODO,FIX,FIXME" })

        todo_comments.setup()
    end,
}
