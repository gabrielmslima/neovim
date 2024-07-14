return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({
            defaults = {
                layout_config = {
                    prompt_position = "top",
                    preview_cutoff = 120,
                    horizontal = { width = 0.9, height = 0.9 },
                    vertical = { width = 0.9, height = 0.9 },
                },
                prompt_prefix = "❯ ",
                selection_caret = "❯ ",
                entry_prefix = "  ",
                initial_mode = "insert",
                selection_strategy = "reset",
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
                file_ignore_patterns = { "node_modules", ".git" },
                winblend = 0,
                color_devicons = true,
                use_less = true,
                set_env = { ['COLORTERM'] = 'truecolor' },
                file_previewer = require('telescope.previewers').vim_buffer_cat.new,
                grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
                qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
                buffer_previewer_maker = require('telescope.previewers').buffer_previewer_maker,
            },
            extensions = {
                fzf = {
                    override_generic_sorter = false,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                }
            }
        })

        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<C-p>', builtin.git_files, {})

        vim.keymap.set('n', '<leader>fw', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)

        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}
