return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,      -- colorscheme must be available at startup
    priority = 1000,   -- load before other start plugins
    config = function()
        require("cyberdream").setup({
            -- Enable transparent background
            transparent = true,

            -- Enable italics comments
            italic_comments = false,

            -- Replace all fillchars with ' ' for the ultimate clean look
            hide_fillchars = false,

            -- Modern borderless telescope theme
            borderless_telescope = true,

            terminal_colors = true,

            theme = {
                variant = "default", -- use "light" for the light variant
                highlights = {
                    Comment = { fg = "#696969", bg = "NONE", italic = true },
                },
                colors = {
                    bg = "#000000",
                    green = "#00ff00",
                    magenta = "#ff00ff",
                },
            },
        })

        vim.cmd.colorscheme("cyberdream")
    end,
}
