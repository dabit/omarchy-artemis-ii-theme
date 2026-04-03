return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#010101",
        dark_bg    = "#010101",
        darker_bg  = "#010101",
        lighter_bg = "#1a1a1a",

        fg         = "#eeeee8",
        dark_fg    = "#b3b3ae",
        light_fg   = "#f1f1eb",
        bright_fg  = "#f2f2ee",
        muted      = "#747474",

        red        = "#ff5b29",
        yellow     = "#ffc548",
        orange     = "#ff7449",
        green      = "#39ff39",
        cyan       = "#a4b9d2",
        blue       = "#5757ff",
        purple     = "#ff66ff",
        brown      = "#99462c",

        bright_red    = "#ffa285",
        bright_yellow = "#ffdf97",
        bright_green  = "#91ff91",
        bright_cyan   = "#c4d4e4",
        bright_blue   = "#9d9dff",
        bright_purple = "#ffa4ff",

        accent               = "#5757ff",
        cursor               = "#eeeee8",
        foreground           = "#eeeee8",
        background           = "#010101",
        selection             = "#1a1a1a",
        selection_foreground = "#eeeee8",
        selection_background = "#1a1a1a",
      },
    },
    -- set up hot reload
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
