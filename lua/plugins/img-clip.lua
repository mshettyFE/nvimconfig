return {
    "HakonHarnes/img-clip.nvim",
    ft = { "markdown" },
    keys = {
        { "<leader>i", "<cmd>PasteImage<cr>", ft = "markdown", desc = "Paste clipboard image" },
    },
    opts = {
        default = {
            prompt_for_file_name = true,
            drag_and_drop = { enabled = true, insert_mode = true },
        },
        filetypes = {
            markdown = {
                prompt_for_file_name = true,
                use_absolute_path = true,

                -- Save to <hugo-root>/assets/images/<page-bundle-folder>/
                dir_path = function()
                    local cfg = vim.fs.find(
                        { "config.yml", "config.toml", "hugo.toml", "hugo.yaml" },
                        { upward = true, path = vim.fn.expand("%:p:h") }
                    )[1]
                    local root = cfg and vim.fn.fnamemodify(cfg, ":h") or vim.fn.getcwd()
                    local topic = vim.fn.expand("%:p:h:t") -- page-bundle folder, e.g. "Cosmology"
                    return root .. "/assets/images/" .. topic
                end,

                -- Emit the site's shortcode with an absolute /images/ path; cursor in the alt slot.
                template = function(context)
                    local topic = vim.fn.expand("%:p:h:t")
                    local fname = vim.fn.fnamemodify(context.file_path, ":t")
                    return string.format('{{< img "/images/%s/%s" "$CURSOR" >}}', topic, fname)
                end,
            },
        },
    },
}
