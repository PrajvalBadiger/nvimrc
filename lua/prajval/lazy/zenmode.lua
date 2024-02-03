return {
    "folke/zen-mode.nvim",
    keys = {
        {
            "<leader>zz",
            function()
                require("zen-mode").toggle()
                vim.wo.wrap = false
                vim.wo.number = true
                vim.wo.rnu = true
                ColorMyPencils()
            end
        },
        {
            "<leader>zZ",
            function()
                require("zen-mode").toggle()
                vim.wo.wrap = false
                vim.wo.number = false
                vim.wo.rnu = false
                vim.opt.colorcolumn = "0"
                ColorMyPencils()
            end
        }
    },
    config = function ()
        require("zen-mode").setup {
            window = {
                width = 90,
                options = {}
            },
        }
    end
}
