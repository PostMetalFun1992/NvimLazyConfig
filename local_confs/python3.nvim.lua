local env_path = vim.fn.getcwd() .. "/.venv"

vim.g.python3_host_prog = env_path .. "/bin/python3"

-- Install pynvim + python-lsp-server
require('lspconfig').pylsp.setup({
  cmd = { env_path .. "/bin/pylsp" },
})

-- Install ruff
require("conform").setup({
  formatters = {
    ruff = {
      command = env_path .. "/bin/ruff",
    },
  },
  formatters_by_ft = {
    python = { "ruff" },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  },
})
