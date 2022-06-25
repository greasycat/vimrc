require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
require'lspconfig'.pyright.setup{
    on_attach = function(client)
        require 'illuminate'.on_attach(client)
    end,
}
require'lspconfig'.vimls.setup{
    on_attach = function(client)
        require 'illuminate'.on_attach(client)
    end,
}
-- require'lspconfig'.csharp_ls.setup{}
require'lspconfig'.csharp_ls.setup{
    on_attach = function(client)
        require 'illuminate'.on_attach(client)
    end,
}

require'qf_helper'.setup({
  prefer_loclist = true,       -- Used for QNext/QPrev (see Commands below)
  sort_lsp_diagnostics = true, -- Sort LSP diagnostic results
  quickfix = {
    autoclose = true,          -- Autoclose qf if it's the only open window
    default_bindings = true,   -- Set up recommended bindings in qf window
    default_options = true,    -- Set recommended buffer and window options
    max_height = 10,           -- Max qf height when using open() or toggle()
    min_height = 1,            -- Min qf height when using open() or toggle()
    track_location = 'cursor', -- Keep qf updated with your current location
                               -- Use `true` to update position as well
  },
  loclist = {                  -- The same options, but for the loclist
    autoclose = true,
    default_bindings = true,
    default_options = true,
    max_height = 10,
    min_height = 1,
    track_location = 'cursor',
  },
})

require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

require'nvim-web-devicons'.setup {}
require'feline'.setup {}
require'feline'.winbar.setup()
require'Comment'.setup()
