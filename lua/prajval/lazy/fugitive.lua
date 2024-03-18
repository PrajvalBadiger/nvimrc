return {
    "tpope/vim-fugitive",
    cmd = "Git",
    keys = {
        {"<leader>gs", vim.cmd.Git},
        {"<leader>gz", "<cmd>Ge:<CR>"},
    },
    config = function ()
    end,
}
