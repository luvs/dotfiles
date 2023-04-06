local sm = require('session_manager')

sm.setup({
  autoload_mode = require('session_manager.config').AutoloadMode.Disabled
})

--require('telescope').load_extension('sessions')
require("telescope").load_extension("ui-select")
