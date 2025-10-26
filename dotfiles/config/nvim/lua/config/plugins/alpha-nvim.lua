return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local a = require("alpha")
        local db = require("alpha.themes.dashboard")
        db.section.header.val = {
            "        ⠀⠀⠀⣀⣀⣠⣤⣀⣀⡀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣄⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀",
            "⠀⠀⢀⣶⣿⣿⣿⣿⣿⣿⠍⠉⠀⠀⠀⠀⠉⠉⠛⠿⣿⣿⣿⣿⣿⣦⡀⠀",
            "⠀⢠⣿⣿⣿⣿⣿⣿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⢿⣿⣿⣿⣿⠀",
            "⢀⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⡀",
            "⣼⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣷",
            "⠸⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿",
            "⠀⠈⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡟",
            "⠀⠰⣦⣄⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⡿⠀",
            "⠀⠀⠙⣿⣷⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⠏⠁⠀",
            "⠀⠀⠀⠀⠙⢿⣿⣿⣶⣤⣀⡀⠀⠀⠀⣀⣠⣤⣶⣿⣿⣿⣿⡿⠃⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠘⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠉⠉⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠙⠛⠋⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        }

        db.section.buttons.val = {
            db.button("<leader>sr", "> Restore existing session", "<cmd>AutoSession restore<cr>"),
            db.button("<leader>ee", "> Toggle File Explorer"),
            db.button("<leader>ff", "> Find File"),
            db.button("<leader>fs", "> Find String"),
            db.button("<leader>qa", "> Quit", "<cmd>qa<cr>"),
        }

        a.setup(db.opts)

        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
