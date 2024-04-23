local dap = require("dap")

dap.adapters.codelldb = {
  type = 'server',
  port = "13000",
  executable = {
    -- CHANGE THIS to your path!
    command = '/home/Stelfy/VSCodeExt/codelldb/adapter/codelldb',
    args = { "--port", "13000" },

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}
dap.configurations.c = dap.configurations.cpp
