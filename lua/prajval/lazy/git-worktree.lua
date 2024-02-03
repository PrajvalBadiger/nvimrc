return {
    "ThePrimeagen/git-worktree.nvim",
    keys = {
        -- list git worktree
        {
            "<leader>wt",
            "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>",
            { silent = true, desc = 'List Git Worktree' },
        },
        -- create git worktree
        {
            "<leader>cwt",
            "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>",
            { silent = true, desc = 'Create Git Worktree' }
        },
    },
    config = function()
        require("git-worktree").setup()
        require("telescope").load_extension('git_worktree')
    end
}
