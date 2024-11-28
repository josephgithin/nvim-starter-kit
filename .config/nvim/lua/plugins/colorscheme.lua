-- Theme/Colorscheme (uncomment section for whichever theme you prefer or use your own)
-- Kanagawa Theme (Custom Palette)
-- return {
--   -- https://github.com/rebelot/kanagawa.nvim
--   'rebelot/kanagawa.nvim', -- You can replace this with your favorite colorscheme
--   lazy = false, -- We want the colorscheme to load immediately when starting Neovim
--   priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
--   opts = {
--     -- Replace this with your scheme-specific settings or remove to use the defaults
--     -- transparent = true,
--     background = {
--       -- light = "lotus",
--       dark = "wave", -- "wave, dragon"
--     },
--     colors = {
--       palette = {
--         -- Background colors
--         sumiInk0 = "#161616", -- modified
--         sumiInk1 = "#181818", -- modified
--         sumiInk2 = "#1a1a1a", -- modified
--         sumiInk3 = "#1F1F1F", -- modified
--         sumiInk4 = "#2A2A2A", -- modified
--         sumiInk5 = "#363636", -- modified
--         sumiInk6 = "#545454", -- modified

--         -- Popup and Floats
--         waveBlue1 = "#322C47", -- modified
--         waveBlue2 = "#4c4464", -- modified

--         -- Diff and Git
--         winterGreen = "#2B3328",
--         winterYellow = "#49443C",
--         winterRed = "#43242B",
--         winterBlue = "#252535",
--         autumnGreen = "#76A56A", -- modified
--         autumnRed = "#C34043",
--         autumnYellow = "#DCA561",

--         -- Diag
--         samuraiRed = "#E82424",
--         roninYellow = "#FF9E3B",
--         waveAqua1 = "#7E9CD8", -- modified
--         dragonBlue = "#7FB4CA", -- modified

--         -- Foreground and Comments
--         oldWhite = "#C8C093",
--         fujiWhite = "#F9E7C0", -- modified
--         fujiGray = "#727169",
--         oniViolet = "#BFA3E6", -- modified
--         oniViolet2 = "#BCACDB", -- modified
--         crystalBlue = "#8CABFF", -- modified
--         springViolet1 = "#938AA9",
--         springViolet2 = "#9CABCA",
--         springBlue = "#7FC4EF", -- modified
--         waveAqua2 = "#77BBDD", -- modified

--         springGreen = "#98BB6C",
--         boatYellow1 = "#938056",
--         boatYellow2 = "#C0A36E",
--         carpYellow = "#FFEE99", -- modified

--         sakuraPink = "#D27E99",
--         waveRed = "#E46876",
--         peachRed = "#FF5D62",
--         surimiOrange = "#FFAA44", -- modified
--         katanaGray = "#717C7C",
--       },
--     },
--   },
--   config = function(_, opts)
--     require('kanagawa').setup(opts) -- Replace this with your favorite colorscheme
--     vim.cmd("colorscheme kanagawa") -- Replace this with your favorite colorscheme

--     -- Custom diff colors
--     vim.cmd([[
--       autocmd VimEnter * hi DiffAdd guifg=#00FF00 guibg=#005500
--       autocmd VimEnter * hi DiffDelete guifg=#FF0000 guibg=#550000
--       autocmd VimEnter * hi DiffChange guifg=#CCCCCC guibg=#555555
--       autocmd VimEnter * hi DiffText guifg=#00FF00 guibg=#005500
--     ]])

--     -- Custom border colors
--     vim.cmd([[
--       autocmd ColorScheme * hi NormalFloat guifg=#F9E7C0 guibg=#1F1F1F
--       autocmd ColorScheme * hi FloatBorder guifg=#F9E7C0 guibg=#1F1F1F
--     ]])
--   end
-- }

-- Kanagawa Theme (Original)
-- return {
--   -- https://github.com/rebelot/kanagawa.nvim
--   'rebelot/kanagawa.nvim', -- You can replace this with your favorite colorscheme
--   lazy = false, -- We want the colorscheme to load immediately when starting Neovim
--   priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
--   opts = {
--     -- Replace this with your scheme-specific settings or remove to use the defaults
--     -- transparent = true,
--     background = {
--       -- light = "lotus",
--       dark = "wave", -- "wave, dragon"
--     },
--   },
--   config = function(_, opts)
--     require('kanagawa').setup(opts) -- Replace this with your favorite colorscheme
--     vim.cmd("colorscheme kanagawa") -- Replace this with your favorite colorscheme
--   end
-- }

-- Tokyo Night Theme
-- return {
--   -- https://github.com/folke/tokyonight.nvim
--   'folke/tokyonight.nvim', -- You can replace this with your favorite colorscheme
--   lazy = false, -- We want the colorscheme to load immediately when starting Neovim
--   priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
--   opts = {
--     -- Replace this with your scheme-specific settings or remove to use the defaults
--     transparent = true,
--     style = "night", -- other variations "storm, night, moon, day"
--   },
--   config = function(_, opts)
--     require('tokyonight').setup(opts) -- Replace this with your favorite colorscheme
--     vim.cmd("colorscheme tokyonight") -- Replace this with your favorite colorscheme
--   end
-- }

-- Catppuccin Theme
-- Lazy.nvim Plugin Specification
return {
    {
        "catppuccin/nvim", -- Catppuccin theme
        name = "catppuccin",
        priority = 1000, -- Ensure the theme loads first
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- Use Mocha for a dark background (similar to IntelliJ)
                transparent_background = false, -- Solid background like IntelliJ
                show_end_of_buffer = false, -- Hide `~` symbols at the end of buffers
                term_colors = true, -- Enable terminal colors
                dim_inactive = { -- Dim inactive windows
                    enabled = true,
                    shade = "dark",
                    percentage = 0.2,
                },
                no_italic = false,
                no_bold = false,
                styles = { -- Match IntelliJ's syntax styling
                    comments = { "italic" }, -- Italicized comments
                    conditionals = { "bold" }, -- Bold conditionals (e.g., if, else)
                    loops = { "bold" }, -- Bold loops
                    functions = { "italic", "bold" }, -- Italic and bold functions
                    keywords = { "bold" }, -- Bold keywords (e.g., return, const)
                    strings = {}, -- Default strings
                    variables = {}, -- Default variables
                    numbers = { "bold" }, -- Bold numbers
                    booleans = { "bold", "italic" }, -- Bold and italic booleans
                    properties = {}, -- Default properties
                    types = { "bold" }, -- Bold types
                    operators = {}, -- Default operators
                },
                color_overrides = { -- Customize colors to resemble IntelliJ
                    mocha = {
                        base = "#1e1e2e", -- Dark background
                        mantle = "#181825", -- Sidebar background
                        crust = "#11111b", -- Statusline background
                        text = "#c0caf5", -- Primary text color
                        subtext1 = "#a6adc8", -- Secondary text color
                        subtext0 = "#9399b2", -- Dimmed text
                        overlay2 = "#737994", -- Comments and overlay text
                        overlay1 = "#6c7986",
                        overlay0 = "#565f89",
                        surface2 = "#414868", -- Sidebar and inactive elements
                        surface1 = "#2c313c", -- Popup and menu background
                        surface0 = "#1e222a", -- Subtle inactive surfaces
                        green = "#98c379", -- IntelliJ-like green for strings
                        teal = "#56b6c2", -- Aqua highlights
                        yellow = "#e5c07b", -- Yellow for constants
                        blue = "#61afef", -- Bright blue for keywords
                        purple = "#c678dd", -- Purple for functions
                        red = "#e06c75", -- Red for errors
                    },
                },
                custom_highlights = { -- Custom highlight groups to match IntelliJ
                    Normal = { fg = "#c0caf5", bg = "#1e1e2e" },
                    Comment = { fg = "#6c7986", style = { "italic" } },
                    Function = { fg = "#c678dd", style = { "bold", "italic" } },
                    Keyword = { fg = "#61afef", style = { "bold" } },
                    String = { fg = "#98c379" },
                    Variable = { fg = "#c0caf5" },
                    Type = { fg = "#e5c07b", style = { "bold" } },
                    Number = { fg = "#d19a66", style = { "bold" } },
                    Boolean = { fg = "#d19a66", style = { "italic", "bold" } },
                    Error = { fg = "#e06c75", style = { "bold" } },
                    LineNr = { fg = "#565f89" },
                    CursorLineNr = { fg = "#c0caf5", style = { "bold" } },
                    Visual = { bg = "#3e4451" },
                    Search = { fg = "#1e1e2e", bg = "#61afef", style = { "bold" } },
                    MatchParen = { fg = "#e5c07b", bg = "#3e4451", style = { "bold" } },
                },
                integrations = { -- Enable plugin integrations
                    treesitter = true, -- Treesitter syntax highlighting
                    native_lsp = {
                        enabled = true,
                        virtual_text = {
                            errors = { "italic" },
                            hints = { "italic" },
                            warnings = { "italic" },
                            information = { "italic" },
                        },
                        underlines = {
                            errors = { "underline" },
                            hints = { "underline" },
                            warnings = { "underline" },
                            information = { "underline" },
                        },
                    },
                    cmp = true, -- Completion framework
                    gitsigns = true, -- Git integration
                    telescope = true, -- Fuzzy finder
                    nvimtree = true, -- File explorer
                    which_key = true, -- Keybinding helper
                    indent_blankline = { enabled = true, colored_indent_levels = true },
                    dashboard = true, -- Startup dashboard
                    markdown = true, -- Markdown highlighting
                },
            })

            -- Load the theme
            vim.cmd.colorscheme("catppuccin")
        end,
    },
}



-- Sonokai Theme
-- return {
--   -- https://github.com/sainnhe/sonokai
--   'sainnhe/sonokai',
--   lazy = false, -- We want the colorscheme to load immediately when starting Neovim
--   priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
--   config = function(_, opts)
--     vim.g.sonokai_style = "default" -- "default, atlantis, andromeda, shusia, maia, espresso"
--     vim.cmd("colorscheme sonokai") -- Replace this with your favorite colorscheme
--   end
-- }

-- One Nord Theme
-- return {
--   -- https://github.com/rmehri01/onenord.nvim
--   'rmehri01/onenord.nvim',
--   lazy = false, -- We want the colorscheme to load immediately when starting Neovim
--   priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
--   config = function(_, opts)
--     vim.cmd("colorscheme onenord") -- Replace this with your favorite colorscheme
--   end
-- }


