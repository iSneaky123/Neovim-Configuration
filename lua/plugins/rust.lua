return {
    {
        'mrcjkb/rustaceanvim',
        version= '^7',
        lazy = false,

        config = function()
            vim.g.rustacenvim = {
                tools = {
                    float_win_config = {
                        border = 'rounded',
                    },
                },
                server = {
                    onattach = function(client, bufnr)
                        vim.keymap.set('n', '<leader>ca', function() vim.cmd.RustLsp('codeAction') end, { desc = 'Code Action' })
                        vim.keymap.set('n', '<leader>cd', function() vim.cmd.RustLsp('debuggables') end, { desc = 'Debug' })
                        vim.keymap.set('n', '<leader>cr', function() vim.cmd.RustLsp('runnables') end, { desc = 'Run' })
                        vim.keymap.set('n', '<leader>K', function() vim.cmd.RustLsp('hoverActions') end, { desc = 'Hover Info' })
                    end,
                },
            }
        end,
    },
    {
        'saecki/crates.nvim',
        event = { "BufRead Cargo.toml" },
        config = function()
            require('crates').setup()
        end,
    },
}

