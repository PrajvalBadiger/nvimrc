local opts = require("telescope.themes").get_ivy()
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>pf",
      function()
        require("telescope.builtin").find_files(opts)
      end,
      desc = "Find Files",
    },
    {
      "<leader><space>",
      function()
        require("telescope.builtin").buffers(opts)
      end,
      desc = "Buffres",
    },
    {
      "<leader>km",
      function()
        require("telescope.builtin").keymaps(opts)
      end,
      desc = "Keymaps",
    },
    {
      "<leader>gf",
      function()
        require("telescope.builtin").git_files(opts)
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
        require("telescope.builtin").help_tags(opts)
      end,
      desc = "Help tags",
    },
    {
      "<leader>br",
      function()
        require("telescope.builtin").git_branches(opts)
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
