local v = vim.keymap

v.set("n", "<leader>f", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format file" })

v.set('n', '<leader>bn', ':bnext<CR>', { desc = "Next Buffer" })
v.set('n', '<leader>bp', ':bprev<CR>', { desc = "Prev Buffer" })

