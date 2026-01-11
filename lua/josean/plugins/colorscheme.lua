return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000, -- load before other UI plugins
    config = function()
      require("kanagawa").setup({
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = true,
        dimInactive = false,
        terminalColors = false,

        colors = {
          palette = {},
          theme = {
            wave = {},
            lotus = {},
            dragon = {},
            all = {},
          },
        },

        overrides = function(colors)
          return {}
        end,

        -- 👇 FORCE DRAGON
        theme = "wave",

        background = {
          dark = "wave",
          light = "lotus",
        },
      })

      -- MUST be called after setup
      vim.cmd("colorscheme kanagawa")
    end,
  },
}
