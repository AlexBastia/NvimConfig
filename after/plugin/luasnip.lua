local ls = require("luasnip")
ls.config.set_config({
  -- Enable autotriggered snippets
  enable_autosnippets = true,
  update_events = 'TextChanged,TextChangedI'
})
