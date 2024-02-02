return {
    "ThePrimeagen/git-worktree.nvim",
    config = function()
        require("git-worktree").setup()
        require("telescope").load_extension('git_worktree')
        --
        -- telescope list git_worktree
        vim.keymap.set(
            "n",
            "<leader>wt",
            "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>",
            { silent = true, desc = 'List Git Worktree' }
        )

        -- telescope create git_worktree
        vim.keymap.set(
            "n",
            "<leader>cwt",
            "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>",
            { silent = true, desc = 'Create Git Worktree' }
        )
    end
}
