vim.g.coq_settings = {
  auto_start = 'shut-up'
}
local coq = require('coq')
vim.cmd('COQnow')
