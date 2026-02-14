return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
        },
    },
    {
        "folke/trouble.nvim",
        dependencies = { 
            "nvim-tree/nvim-web-devicons",
        },
        opts = {},
        cmd = "Trouble",
        keys = {
            {
                "<leader>xx",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)",
            },
        }
    },
    {
        "stevearc/aerial.nvim",
        opts = {},
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },
        keys = {
            { 
                "leader<a>", 
                "<cmd>AerialToggle<cr>",
                desc = "Code Outline",
            },
        },
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true,
        keys = {
            { '<leader>t', '<cmd>ToggleTerm<CR>', desc='Terminal' }
        },
    }
}
