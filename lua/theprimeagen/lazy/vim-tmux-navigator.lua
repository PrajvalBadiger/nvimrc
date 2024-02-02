return {
    "alexghergh/nvim-tmux-navigation",
    config = function()
        require('nvim-tmux-navigation').setup {
            disable_when_zoomed = true -- defaults to false
        }
        vim.keymap.set('n', "<C-h>", require('nvim-tmux-navigation').NvimTmuxNavigateLeft)
        vim.keymap.set('n', "<C-j>", require('nvim-tmux-navigation').NvimTmuxNavigateDown)
        vim.keymap.set('n', "<C-k>", require('nvim-tmux-navigation').NvimTmuxNavigateUp)
        vim.keymap.set('n', "<C-l>", require('nvim-tmux-navigation').NvimTmuxNavigateRight)
        vim.keymap.set('n', "<C-\\>", require('nvim-tmux-navigation').NvimTmuxNavigateLastActive)
        vim.keymap.set('n', "<C-Space>", require('nvim-tmux-navigation').NvimTmuxNavigateNext)
    end,

}
