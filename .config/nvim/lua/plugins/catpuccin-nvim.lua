-- Lazy.nvim Plugin Specification
return {
    -- Add the Catppuccin theme
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000, -- Ensure the theme loads first
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
                background = { -- Set light and dark backgrounds
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = false, -- Disable transparency
                show_end_of_buffer = true, -- Show `~` characters at the end of buffers
                term_colors = true, -- Enable terminal colors
                dim_inactive = { -- Dim inactive windows
                    enabled = true,
                    shade = "dark",
                    percentage = 0.15,
                },
                no_italic = false, -- Enable italics
                no_bold = false, -- Enable bold text
                no_underline = false, -- Enable underlined text
                styles = { -- Customize syntax styles
                    comments = { "italic" },
                    conditionals = { "italic" },
                    loops = { "bold" },
                    functions = { "bold", "italic" },
                    keywords = { "italic" },
                    strings = {},
                    variables = {},
                    numbers = { "bold" },
                    booleans = { "bold", "italic" },
                    properties = {},
                    types = { "bold" },
                    operators = {},
                },
                color_overrides = {}, -- Optionally override specific colors
                custom_highlights = { -- Example custom highlights
                    Comment = { fg = "#c6a0f6", style = { "italic" } },
                    LineNr = { fg = "#a6adc8" },
                    CursorLineNr = { fg = "#f5c2e7", style = { "bold" } },
                },
                integrations = { -- Enable integrations for specific plugins
                    treesitter = true, -- Highlight based on Treesitter
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
                    dashboard = true, -- Startup dashboard
                    indent_blankline = { enabled = true, colored_indent_levels = true },
                    barbar = true, -- Tabline
                    markdown = true,
                },
            })
            
            -- Load the theme
            vim.cmd.colorscheme("catppuccin")
        end,
    },
}

