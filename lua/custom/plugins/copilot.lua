if vim.loop.os_uname().sysname ~= 'Darwin' then
  return {}
end

return {
  { -- copilot
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    -- event = 'LazyFile',
    event = 'InsertEnter',
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
      copilot_node_command = vim.fn.expand '$HOME' .. '/.nvm/versions/node/v18.12.1/bin/node',
    },
    -- config = function()
    --   require('copilot').setup {}
    -- end,
    -- build = ':Copilot auth',
  },
  -- copilot cmp source
  {
    'zbirenbaum/copilot-cmp',
    config = function()
      require('copilot_cmp').setup()
    end,
  },
}
