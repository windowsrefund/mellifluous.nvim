return {
    colorset = "mellifluous",
    plugins = {
        cmp = true,
        indent_blankline = true,
        nvim_tree = {
            enabled = true,
            show_root = false,
        },
        neo_tree = {
            enabled = true,
        },
        telescope = {
            enabled = true,
            nvchad_like = true,
        },
        startify = true,
        gitsigns = true,
        neorg = true,
        nvim_notify = true,
        aerial = true,
        neotest = true,
        lazy = true,
        mason = true,
        nvim_dap_ui = true,
    },
    dim_inactive = false,
    styles = { -- see :h attr-list for options. set {} for NONE, { option = true } for option
        main_keywords = {},
        other_keywords = {},
        types = {},
        operators = {},
        strings = {},
        functions = {},
        constants = {},
        comments = { italic = true },
        markup = {
            headings = { bold = true },
        },
        folds = {},
    },
    transparent_background = {
        enabled = false,
        lightness = function(bg) -- used for bg shades
            -- This method tries to keep brighter colorsets bright and
            -- dimmer colorsets dim and still lighten the shades up so that
            -- the colorsets have more chance to look good with transparent
            -- background on brighter wallpapers.
            local old_lightness = bg:get_hsl().l
            local threshold = 20
            local baseline = 10
            if old_lightness < threshold then
                -- We will assume that the dimmest of transparent
                -- background over users wallpaper is at least of baseline
                -- lightness. Presuming old range is [0, threshold], let's
                -- position the lightness relatively in a new range of
                -- [baseline, threshold].
                local position = old_lightness / threshold
                local new_lightness = baseline + ((threshold - baseline) * position)
                return new_lightness
            end
        end,
        floating_windows = true,
        telescope = true,
        file_tree = true,
        cursor_line = true,
        status_line = false,
    },
    flat_background = {
        line_numbers = false,
        floating_windows = false,
        file_tree = false,
        cursor_line_number = false,
    },
}
