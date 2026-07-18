return {
    "jbyuki/nabla.nvim",
    ft = { "markdown", "tex", "latex" },
    keys = {
        { "<leader>mn", function() require("nabla").popup() end, desc = "Nabla math popup at cursor" },
        { "<leader>mt", function() require("nabla").toggle_virt() end, desc = "Nabla toggle inline math rendering" },
    },
}
