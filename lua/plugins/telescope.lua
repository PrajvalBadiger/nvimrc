return {
    "nvim-telescope/telescope.nvim",
    keys = {
        {
            "<leader>pf",
            function()
                require("telescope.builtin").find_files()
            end,
            desc = "Find Files",
        },
        {
            "<leader><space>",
            function()
                require("telescope.builtin").buffers()
            end,
            desc = "Buffres",
        },
        {
            "<leader>km",
            function()
                require("telescope.builtin").keymaps()
            end,
            desc = "Keymaps",
        },
        {
            "<leader>gf",
            function()
                require("telescope.builtin").git_files()
            end,
            desc = "Git Files",
        },
        {
            "<leader>pws",
            function()
                local word = vim.fn.expand("<cword>")
                require("telescope.builtin").grep_string({ search = word })
            end,
        },
        {
            "<leader>pWs",
            function()
                local word = vim.fn.expand("<cWORD>")
                require("telescope.builtin").grep_string({ search = word })
            end,
        },
        {
            "<leader>ps",
            function()
                require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
            end,
            desc = "Builtin grep",
        },
        {
            "<leader>vh",
            function()
                require("telescope.builtin").help_tags()
            end,
            desc = "Help tags",
        },
        {
            "<leader>br",
            function()
                require("telescope.builtin").git_branches()
            end,
            desc = "Help tags",
        },
    },
    -- change some options
    opts = {
        defaults = {
            layout_strategy = "horizontal",
            layout_config = { prompt_position = "top" },
            sorting_strategy = "ascending",
            winblend = 0,
        },
    },
}
