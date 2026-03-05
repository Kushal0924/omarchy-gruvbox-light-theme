return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#f2e5bc",
                bg_dark = "#f2e5bc",
                bg_highlight = "#928374",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#3c3836",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#7c6f64",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#928374",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#cc241d",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#9d0006",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#d79921",
                -- green: Comments, strings, success states, git additions
                green = "#98971a",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#689d6a",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#458588",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#b16286",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#8f3f71",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
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
