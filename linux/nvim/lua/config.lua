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


require'lspconfig'.rust_analyzer.setup{
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

require("formatter").setup {
  -- Enable or disable logging
    logging = true,
  -- Set the log level
    log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
    filetype = {
        rust = {require("formatter.filetypes.rust").rustfmt},
        toml = {require("formatter.filetypes.toml").taplo},
        yaml = {require("formatter.filetypes.yaml").prettier},
        json = {require("formatter.filetypes.json").prettier},
        css = {require("formatter.filetypes.css").prettier},
        html = {require("formatter.filetypes.html").prettier},
        typescript = {require("formatter.filetypes.typescript").prettier},
        javascript = {require("formatter.filetypes.javascript").prettier},
        python = {require("formatter.filetypes.python").black},
    },

    ["*"] = {
        require("formatter.filetypes.any").remove_trailing_whitespace
    }
}
require'nvim-web-devicons'.setup {}
require'feline'.setup {}
require'Comment'.setup()

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
                   vim.lsp.diagnostic.on_publish_diagnostics, {
                     -- Enable underline, use default values
                     underline = true,
                     -- Enable virtual text, override spacing to 4
                     virtual_text = {
                       spacing = 4,
                     },
                     -- Use a function to dynamically turn signs off
                     -- and on, using buffer local variables
                     signs = function(namespace, bufnr)
                       return vim.b[bufnr].show_signs == true
                     end,
                     -- Disable a feature
                     update_in_insert = true,
                   }
                 )
