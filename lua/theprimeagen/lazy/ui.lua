return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = {
                char = "▏",
            },
        },
    },

    {
        "echasnovski/mini.indentscope",
        opts = { symbol = "▏" },
    },

    {
        "NvChad/nvim-colorizer.lua",
        event = "BufRead",
        config = true,
    },

    {
        "Bekaboo/dropbar.nvim",
    },

    {
        "jghauser/kitty-runner.nvim"
    },
}
