vim.g.coq_settings = {
  ['auto_start'] = 'shut-up',
  ['display.pum.fast_close'] = false
}
local coq = require('coq')
vim.cmd('COQnow')
