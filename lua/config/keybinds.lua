local v = vim.keymap

v.set("n", "<leader>f", function()
    require("conform").format({async = true, lsp_fallback = true })
end, { desc = "Format file" })
