local env_path = vim.fn.getcwd() .. "/.venv"

vim.g.python3_host_prog = env_path .. "/bin/python3"

-- Don't forget to install pynvim + python-lsp-server
require('lspconfig').pylsp.setup({
  cmd = { env_path .. "/bin/pylsp" },
})
