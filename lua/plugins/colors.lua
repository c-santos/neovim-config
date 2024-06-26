return {
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                transparent = true,
                terminal_colors = true,
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                    sidebars = "transparent",
                    floats = "transparent"
                }
            })
        end,
    },
    {
        "Mofiqul/vscode.nvim",
        config = function ()
            require("vscode").setup({
                italic_comments = false,
            })
        end
    },
    {
        "sho-87/kanagawa-paper.nvim",
        lazy = false,
        priority = 1000,
        config = function ()
            require("kanagawa-paper").setup({
                commentStyle = { italic = false },
                keywordStyle = { italic = false },
                terminalColors = true,
                transparent = true,
                overrides = function(colors)
                    local theme = colors.theme
                    return {
                        NormalFloat = { bg = "none" },
                        FloatBorder = { bg = "none" },
                        FloatTitle = { bg = "none" },

                        -- Save a hlgroup with dark background and dimmed foreground
                        -- so that you can use it where you still want darker windows.
                        -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
                        NormalDark = { fg = theme.ui.fg, bg = theme.ui.bg_m3 },

                        -- -- Popular plugins that open floats will link to NormalFloat by default;
                        -- -- set their background accordingly if you wish to keep them dark and borderless
                        -- LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                        -- MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                        -- Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
                        -- PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
                        -- PmenuSbar = { bg = theme.ui.bg_m1 },
                        -- PmenuThumb = { bg = theme.ui.bg_p2 },
                    }
                end,
            })
        end
    },
    {
        "neanias/everforest-nvim",
        config = function()
            require("everforest").setup({
                -- Your config here
                background = "high",
                disable_italic_comments = true,
                ui_contrast = "high"
            })
        end
    }
}
