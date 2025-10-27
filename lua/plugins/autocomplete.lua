return {
    "saghen/blink.cmp",
    version = "*",
    dependencies = { "rafamadriz/friendly-snippets" },

    opts = {
        keymap = {
            preset = "enter",
            ["<Up>"] = { "select_prev", "fallback" },
            ["<Down>"] = { "select_next", "fallback" },
            ["<Tab>"] = { "select_next", "fallback" },
            ["<S-Tab>"] = { "select_prev", "fallback" },
            ["<C-b>"] = { "scroll_documentation_up", "fallback" },
            ["<C-f>"] = { "scroll_documentation_down", "fallback" },
            ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
        },

        appearance = {
            nerd_font_variant = "mono",
        },

        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },

        fuzzy = { implementation = "lua" },

        completion = {
            keyword = { range = "prefix" },
            menu = {
                draw = {
                    treesitter = { "lsp" },
                },
            },
            trigger = { show_on_trigger_character = true },
            documentation = {
                auto_show = true,
            },
        },

        signature = { enabled = true },
    },

    opts_extend = { "sources.default" },

    config = function(_, opts)
        require("blink.cmp").setup(opts)
    end,
}
