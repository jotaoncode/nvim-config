return {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = true,
  keys = {
    { "<leader>pf", "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "Find in files" },
    { "<C-p>", "<cmd>lua require('telescope.builtin').git_files()<cr>", desc = "Find in git files" },
    { "<leader>ps", function()
        require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") });
      end,
      desc = "Find with git grep"
    },
  }
}

