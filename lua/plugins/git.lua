-- Git related plugins
return {
    {
        "tpope/vim-fugitive",
        cmd = { "Git", "G", "Gread", "Gwrite", "Gclog" },
        keys = {
            { "<leader>gs", vim.cmd.Git },
            { "<leader>gz", "<cmd>Ge:<CR>" },
            { "<leader>gb", "<cmd>G blame<CR>" },
        },
        config = function() end,
    },
    {
        "ThePrimeagen/git-worktree.nvim",
        keys = {
            -- list git worktree
            {
                "<leader>gw",
                "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>",
                { silent = true, desc = "List Git Worktree" },
            },
            -- create git worktree
            {
                "<leader>cw",
                "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>",
                { silent = true, desc = "Create Git Worktree" },
            },
        },
        config = function()
            require("git-worktree").setup()
            require("telescope").load_extension("git_worktree")
        end,
    },
}
