return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      -- https://cmp.saghen.dev/configuration/keymap.html#super-tab
      preset = "super-tab",
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
  },
}
