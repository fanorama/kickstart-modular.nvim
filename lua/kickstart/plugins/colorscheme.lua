return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "rebelot/kanagawa.nvim", name = "kanagawa", priority = 1000 },
  {
    "wtfox/jellybeans.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
    },
  },
  {
    "rmehri01/onenord.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "yorumicolors/yorumi.nvim",
    lazy = false,
    priority = 1000,
  },
  { "diegoulloao/neofusion.nvim", priority = 1000, config = true, opts = {
    invert_selection = true,
  } },
  { "mistweaverco/retro-theme.nvim" },
  {
    "marko-cerovac/material.nvim",
    name = "material",
    priority = 1000,
    config = function()
      require("material").setup {
        contrast = {
          terminal = true, -- Enable contrast for the built-in terminal
          sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
          floating_windows = false, -- Enable contrast for floating windows
          cursor_line = false, -- Enable darker background for the cursor line
          lsp_virtual_text = false, -- Enable contrasted background for lsp virtual text
          non_current_windows = false, -- Enable contrasted background for non-current windows
          filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
        },

        styles = { -- Give comments style such as bold, italic, underline etc.
          comments = { italic = false },
          variables = {},
          operators = {},
          types = {},
        },

        lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )
        plugins = {
          -- "coc",
          -- "colorful-winsep",
          -- "dap",
          -- "dashboard",
          -- "eyeliner",
          "fidget",
          "flash",
          -- "gitsigns",
          -- "harpoon",
          -- "hop",
          -- "illuminate",
          "indent-blankline",
          -- "lspsaga",
          -- "mini",
          -- "neogit",
          -- "neotest",
          -- "neo-tree",
          -- "neorg",
          -- "noice",
          -- "nvim-cmp",
          "nvim-navic",
          -- "nvim-tree",
          "nvim-web-devicons",
          -- "rainbow-delimiters",
          -- "sneak",
          "telescope",
          "trouble",
          "which-key",
          "nvim-notify",
        },
      }
    end,

    --vim.cmd "colorscheme material",
  },
  {
    "EdenEast/nightfox.nvim",
    name = "nightfox",
    priority = 1000,
    config = function()
      require("nightfox").setup {}
      -- vim.cmd.colorscheme "night-owl"
    end,
  },
  {
    "oxfist/night-owl.nvim",
    name = "night-owl",
    priority = 1000,
    config = function()
      require("night-owl").setup {
        transparent_background = false,
      }
      -- vim.cmd.colorscheme "night-owl"
    end,
  },
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    priority = 1000,
    config = function()
      require("onedark").setup {
        style = "deep",
      }

      -- vim.cmd.colorscheme "onedark"
    end,
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require("tokyonight").setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }
    end,
  },
}
