return {
  "tpope/vim-fugitive",
  config = true,
  cmd = {
    "Git",
  },
  keys = {
    { "<leader>gs", vim.cmd.Git, desc = "Git wrapper, status" },
  }
}
