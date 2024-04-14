return {
  'mfussenegger/nvim-dap',
  config = function() 
    require('dap').adapters.go = {
      type = 'executable';
      command = 'node';
      args = {os.getenv('HOME') .. '/projects/vscode-go/dist/debugAdapter.js'};
    }
    require('dap').configurations.go = {
      {
        type = 'go';
        name = 'Debug';
        request = 'launch';
        showLog = false;
        program = "${file}";
        dlvToolPath = vim.fn.exepath('dlv')  -- Adjust to where delve is installed
      },
    }

    require('dap').adapters.chrome = {
      type = "executable",
      command = "node",
      args = {os.getenv("HOME") .. "/projects/vscode-chrome-debug/out/src/chromeDebug.js"} -- TODO adjust
    }

    require('dap').configurations.javascriptreact = {
      {
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}"
      }
    }
  require('dap').configurations.javascript = {
    {
      type = "chrome",
      request = "attach",
      program = "${file}",
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = "inspector",
      port = 9222,
      webRoot = "${workspaceFolder}"
    }
  }
  require('dap').configurations.typescriptreact = {
    {
      type = "chrome",
      request = "attach",
      program = "${file}",
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = "inspector",
      port = 9222,
      webRoot = "${workspaceFolder}"
    }
  }
  require('dap').configurations.typescript = {
    {
      type = "chrome",
      request = "attach",
      program = "${file}",
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = "inspector",
      port = 9222,
      webRoot = "${workspaceFolder}"
    }
  }
  end,
  keys = {
    { "<leader>dd", "<cmd>lua require('dap').toggle_breakpoint()<cr>", desc = "Toggle breakpoints" },
    { "<leader>cc", "<cmd>lua require('dap').continue()<cr>", desc = "Continue execution" },
    { "<leader>oo", "<cmd>lua require('dap').step_over()<cr>", desc = "Step over" },
    { "<leader>ii", "<cmd>lua require('dap').step_into()<cr>", desc = "Step into" },
    { "<leader>xx", "<cmd>lua require('dap').repl.open()<cr>", desc = "Repl open" },
  }
}
