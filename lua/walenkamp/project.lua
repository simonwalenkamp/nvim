local M = {}

function M.root()
  for _, client in ipairs(vim.lsp.get_clients({ bufnr = 0 })) do
    if client.root_dir then
      return client.root_dir
    end
  end

  return vim.fs.root(0, { ".git", ".hg", "Makefile", "package.json", "build.sbt", ".terraform" }) or vim.uv.cwd()
end

function M.terminal(command)
  local cwd = M.root()
  vim.cmd.tabnew()
  vim.fn.jobstart(command or vim.o.shell, { cwd = cwd, term = true })
  vim.cmd.startinsert()
end

return M
