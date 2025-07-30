-- lua/plugins/github-theme.lua
return {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        require("github-theme").setup({
            -- Example configuration (refer to plugin docs for full options)
            options = {
                transparent = true, -- Enable transparent background
                terminal_colors = true, -- Enable terminal colors
                italic_comments = true, -- Make comments italic
            },
            dark_variant = "dark_default", -- or "dark_dimmed", "dark_high_contrast"
            -- light_variant = "light_default", -- uncomment and set if you use light variants
        })

        vim.cmd("colorscheme github_dark") -- Apply the desired dark variant
        -- Or if you want to switch based on system theme (requires additional setup)
        -- vim.cmd('colorscheme github_' .. (vim.o.background == 'dark' and 'dark' or 'light'))
    end,
}
