local dap = require("dap")

dap.adapters.coreclr = {
  type = "executable",
  command = "/home/your-user/.local/share/nvim/debuggers/netcoredbg/netcoredbg",
  args = { "--interpreter=vscode" },
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "Launch",
    request = "launch",
    program = function()
      return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/bin/Debug/net7.0/", "file")
    end,
  },
}
