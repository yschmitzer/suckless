return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "theHamsta/nvim-dap-virtual-text",
        "nvim-neotest/nvim-nio",
        "williamboman/mason.nvim",
    },
    config = function()
        local dap = require("dap")
        local ui = require("dapui")

        require("dapui").setup()
        require("nvim-dap-virtual-text").setup()

        dap.adapters.php = {
            type = "executable",
            command = "node",
            args = { "/home/libreja/.local/share/nvim/mason/packages/php-debug-adapter/extension/out/phpDebug.js" },
            host = "0.0.0.0",
        }

        dap.configurations.php = {
            {
                type = "php",
                request = "launch",
                name = "Listen for Xdebug",
                host = "0.0.0.0",
                port = 9042,
                pathMappings = {
                    ["/var/www/html"] = vim.fn.getcwd(),
                },
            },
        }

        vim.keymap.set("n", "<space>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
        vim.keymap.set("n", "<space>dg", dap.run_to_cursor, { desc = "Run Debugger to cursor" })
        vim.keymap.set("n", "<space>dh", function()
            require("dapui").eval(nil, { enter = true })
        end, { desc = "Eval Debugger location" })

        vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue Debugger" })
        vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step Debugger into" })
        vim.keymap.set("n", "<leader>dn", dap.step_over, { desc = "Step Debugger over" })
        vim.keymap.set("n", "<leader>do", dap.step_out, { desc = "Step Debugger out" })
        vim.keymap.set("n", "<leader>dp", dap.step_back, { desc = "Step Debugger back" })
        vim.keymap.set("n", "<leader>dr", dap.restart, { desc = "Restart Debugger" })
        vim.keymap.set("n", "<leader>dd", function()
            ui.toggle()
        end, { desc = "Toggle Debug UI" })

        dap.listeners.before.attach.dapui_config = function()
            ui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            ui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            ui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            ui.close()
        end
    end,
}
