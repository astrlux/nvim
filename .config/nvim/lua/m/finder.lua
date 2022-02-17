local actions = require('telescope.actions')
require('telescope').setup({
    defaults = {
        file_ignore_patterns = {
            'vendor', 'fonts', 'logs', '.DS_Store', 'node_modules', '.git',
            '.hg', 'lua-language-server'
        },
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        -- color_devicons = true,
        file_previewer = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
        mappings = {
            i = {
                ['<C-x>'] = false,
                ['<C-q>'] = actions.send_to_qflist
            }
        },
        layout_config = { -- place preview on top
            flex = {
                flip_columns = 720 -- remove preview under these columns
            }
        }
    },
    pickers = {
        find_files = {
            theme = 'ivy'
        },
        gitfiles = {
            theme = 'ivy'
        },
        buffers = {
            theme = 'ivy'
        }
    },
    extensions = {
        fzf = {
            fuzzy = true, -- false will perform exact matches
            override_generic_sorter = false,
            override_file_sorter = true,
            case_mode = 'smart_case' -- or 'ignore_case' or 'respect_case'
        },
        file_browser = {
            theme = 'ivy',
            mappings = {
                ['i'] = {
                    -- your custom insert mode mappings
                },
                ['n'] = {
                    -- your custom normal mode mappings
                }
            }
        }
    }
})

-- load extensions after setup
require'telescope'.load_extension 'fzf'
require'telescope'.load_extension 'file_browser'

local M = {}
M.search_dotfiles = function()
    require('telescope.builtin').find_files({
        prompt_title = 'dotfiles',
        cwd = vim.env.DOTFILES,
        hidden = true
    })
end
return M
