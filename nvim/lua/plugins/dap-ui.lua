return {
  'rcarriga/nvim-dap-ui',
  dependencies = {
    { 'mfussenegger/nvim-dap' },
  },
  config = function ()
    require("neodev").setup({
      library = { plugins = { "nvim-dap-ui" }, types = true },
    })
    require('dapui').setup()
  end,
  keys = {
    { "<leader>de", "<cmd>lua require('dapui').toggle()<cr>", desc = "Toggle debugger" },
    { "<leader>dc", "<cmd>lua require('dapui').open({reset = true})<cr>", desc = "Toggle debugger" },
  }
}
